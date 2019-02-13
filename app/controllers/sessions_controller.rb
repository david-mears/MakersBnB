class SessionsController < ApplicationController
  def new
  end

  def create
    if Password.check_password(params[:session][:username], 
      params[:session][:password])
      redirect_to '/spaces/index'
    else
      render 'new'
      flash[:error] = 'Incorrect Username or Password'
    end
  end

  def destroy
  end
end
