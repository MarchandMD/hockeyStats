class UsersController < ApplicationController
  def index
  end

  def show
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:email, :password)
  end
end
