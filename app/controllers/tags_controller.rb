class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find( params[:id] )
  end

  private
    def user_params
      params.require(:user).permit(:name, :question_id)
    end

end
