class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])&.authenticate(params[:password])
    if user
      session[:user_id] = user.id
      redirect_to "/places"
    else
      flash[:alert] = "Incorrect username or password"
      redirect_to "/login"
    end
  end

  def destroy
  end
end
  