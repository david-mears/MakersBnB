class SessionsController < ApplicationController
  def new
  end

  def create
    if Password.check_password(params[:session][:username], 
      params[:session][:password])
      redirect_to '/spaces/index'
    else
      flash[:error] = 'Incorrect Username or Password'
      render 'new'
    end
  end

  def destroy
  end
end
