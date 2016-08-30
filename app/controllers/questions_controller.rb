class QuestionsController < ApplicationController
  before_action :authorise, :only => [:create, :update, :edit, :destroy]
  before_action :check_user, :only => [:edit, :update, :destroy]
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find params[:id]
    @comment = @question.comments.build(:question => @question)
  end

  def new
    @question = Question.new
  end

  def create
    question = Question.new(question_params)
    question.user_id = @current_user.id
    question.save
    # question = Question.create( question_params )
    # @current_user.question << question
    # I'm hoping this will solve the create question problem
    redirect_to "/questions/#{question.id}"
  end

  def edit
    @question = Question.find params[:id]
  end

  def update
    question = Question.find params[:id]
    question.update( question_params )
    redirect_to "/questions/#{question.id}"
  end

  def destroy
    question = Question.find params[:id]
    question.destroy
    redirect_to "/questions"
  end

  private
    def question_params
      params.require(:question).permit(:title, :body, :user_id)
    end

    def check_user
      if @current_user.id != Question.find(params[:id]).user.id
       flash[:error] = "That's not your account"
       redirect_to :back
     end
    end

end
