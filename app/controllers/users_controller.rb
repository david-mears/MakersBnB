class UsersController < ApplicationController
  def new
  end

  def create
    User.create(email: params[:email],
                forename: params[:forename],
                surname: params[:surname],
                username: params[:username],
                password: params[:password])
    session[:user_id] = User.return_user_id(params[:username])
    redirect_to :controller => 'spaces', :action => 'index' 
  end

  def index
    redirect_to :controller => 'users', :action => 'new' 
  end
end
