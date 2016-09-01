class UsersController < ApplicationController
  before_action :authorise, :only => [:index, :edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find( params[:id] )
    # @question = User.find
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      UserMailer.welcome(@user).deliver_now
      flash[:success] = "User was successfully created"
      redirect_to users_path
    else
      flash[:error] = "Wrong"
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params

    redirect_to user_path(user)
  end

  def destroy
    user = @current_user
    user.destroy

    redirect_to users_path()
  end

  # Password resets
  def password_reset
    @user = @current_user
  end

  def password_reset_sent
    UserMailer.reset_password(@current_user).deliver_now
  end

  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation, :image, :question_id, :comment_id)
    end


end
