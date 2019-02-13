class UsersController < ApplicationController
  def new
  end

  def create
    User.create(email: params[:email], forename: params[:forename], 
    surname: params[:surname], username: params[:username],
    password: params[:password])
    session[:user_id] = User.find_by(username: params[:session][:username]).id
    redirect_to '/spaces'
  end
end
