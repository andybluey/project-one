class CommentsController < ApplicationController
  before_action :authorise, :only => [:create, :destroy]
  before_action :check_user, :only => [:edit, :update, :destroy]

  def create
    @question = Question.find params[:question_id]
    comment = Comment.create(comment_params)
    @question.comments << comment
    @current_user.comments << comment
    redirect_to question_path(@question)
  end

  def edit
    @comment = @question.comments.find params[:id]
  end

  def destroy
    @question = Question.find params[:question_id]
    @comment = @question.comments.find params[:id]
    @comment.destroy
    redirect_to question_path(@question)
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :question_id)
    end

    def check_user
      if @current_user.id != Comment.find(params[:id]).user.id
       flash[:error] = "That's not your account"
       redirect_to :back
     end
    end

end
