class SessionsController < ApplicationController
  def new
  end

  def create

    if Password.check_password(params[:session][:username], params[:session][:password])
      session[:user_id] = User.find_by(username: params[:session][:username]).id
      redirect_to '/spaces/index'
    else
      flash[:error] = 'Incorrect Username or Password'
      render 'new'
    end
  end

  def destroy
  end
end
