class UsersController < ApplicationController
  def new
  end

  def create
    User.create(email: params[:email], forename: params[:forename], 
    surname: params[:surname], username: params[:username],
    password: params[:password])
    redirect_to '/spaces'
  end
end
