class UsersController < ApplicationController
  def index
  end

  def show
  end

  def create
    @user = User.find_or_initialize_by(email: params[:email])

    if params[:password] ==
       params[:password_confirmation] && @user.save
      flash[:success] = "Welcome, #{@user.email}!"
      redirect_to @user
    else
      flash[:failure] = "Passwords must match"
      redirect_to root_path
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
