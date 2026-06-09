class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username], password: params[:password])
    if user
      session[:user_id] = user.id
      redirect_to "/"
    else
      flash[:alert] = "Incorrect username or password"
      redirect_to "/login"
    end
  end

  def destroy
  end
end
  