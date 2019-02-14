class SessionsController < ApplicationController
  def new
  end

  def create

    if Password.check_password(params[:session][:username], 
      params[:session][:password])
      session[:user_id] = User.return_user_id(params[:session][:username])
      redirect_to '/spaces/index'
    else
      flash[:error] = 'Incorrect Username or Password'
      render 'new'
    end
  end

  def destroy
    session.clear
  end
end
