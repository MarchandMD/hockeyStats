class SessionsController < ApplicationController
  def create
    code = params[:code]

    facade_return = SessionFacade.new.authenticate(code)

    data = facade_return[0]
    access_token = facade_return[1]

    user = User.find_or_create_by(uid: data[:id])
    user.email = data[:email]
    user.uid = data[:id]
    user.password = data[:email]
    user.token = access_token
    user.save

    session[:user_id] = user.id
    redirect_to user_path(user)
  end

  def delete
    session[:user_id] = nil
    redirect_to root_path
  end
end
