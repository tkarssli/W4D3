class UsersController < ApplicationController
  before_action :require_logout, only: [:new, :create]

  def new
    render :new
  end

  def create
    user = User.new(user_params)

    if user.save
      login!(user)
      redirect_to cats_url
    else
      # error handling
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name,:password_digest,:session_token, :password)
  end
end