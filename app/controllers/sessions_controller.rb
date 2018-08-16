class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user
    else
      render :new
    end
  end

  def destroy
    if session
      session.delete(:user_id)
    end
    redirect_to '/'
  end
end
