class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if params[:password] ==
       params[:password_confirmation] && @user.save
      flash[:success] = "Welcome, #{@user.email}!"
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      flash[:failure] = "Passwords must match"
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.favorite_team = params[:team]
    @user.save(validate: false)
    redirect_to user_path(@user)
  end

  def login_form
  end

  def login
    user = User.find_by(email: params[:email])
    flash[:success] = "Welcome, #{user.email}"
    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
