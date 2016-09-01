class QuestionsController < ApplicationController
  before_action :authorise, :only => [:create, :update, :edit, :destroy]
  before_action :check_user, :only => [:edit, :update, :destroy]

  def index

    if params[:search]
      @questions = Question.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    else
      @questions = Question.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    end
  end

  def show
    @question = Question.find params[:id]
    @comment = @question.comments.build(:question => @question)
  end

  def new
    @question = Question.new
  end

  def create
    @question = @current_user.questions.create(question_params)
    @question.tag_ids = params[:question][:tag_ids]
    if @question.save
      flash[:success] = "New Question created"
      redirect_to question_path(@question)
    else
      render :new
    end
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

  # Allow voting
  def upvote
    @question = Question.find(params[:id])
    @question.upvote_by @current_user
    redirect_to :back
  end

  private
    def question_params
      params.require(:question).permit(:title, :body, :user_id, :tag_id, :tag_ids)
    end

    def check_user
      if @current_user.id != Question.find(params[:id]).user.id
       flash[:error] = "That's not your account"
       redirect_to :back
     end
    end

end
