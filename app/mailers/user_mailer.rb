class UserMailer < ApplicationMailer

  default from: "admin@hackoverflow.com"

  def welcome(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome to Hackoverflow", :bcc => "andrewjaknight@gmail.com")
  end

  def reset_password(user) #(email)
    # @user = User.find_by(:email => email)
    @user = user
    mail(:to => @user.email, :subject => "Reset password")
  end

end
