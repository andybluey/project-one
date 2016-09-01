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

  def update
    comment = Comment.find params[:id]
    comment.update comment_params
    redirect_to :back
  end

  def edit
    @question = Question.find params[:question_id]
    @comment = @question.comments.find params[:id]
  end

  def destroy
    @question = Question.find params[:question_id]
    @comment = @question.comments.find params[:id]
    @comment.destroy
    redirect_to question_path(@question)
  end

  # Allow voting
  def upvote
    @comment = Comment.find(params[:id])
    @comment.upvote_by @current_user
    redirect_to :back
    sum = Comment.all.sum(:cached_votes_total)
  end

  def downvote
    @comment = Comment.find(params[:id])
    @comment.downvote_by @current_user
    redirect_to :back
  end

  # Controller to view all comments - Not directly refenced atm
  def all_index
    @comments = Comment.all
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :question_id, :user_id)
    end

    def check_user
      if @current_user.id != Comment.find(params[:id]).user.id
       flash[:error] = "That's not your account"
       redirect_to :back
     end
    end

end
