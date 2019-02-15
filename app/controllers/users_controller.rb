require 'bcrypt'

class UsersController < ApplicationController
  def new
  end

  def create
    hash_password = Password.create(params[:password])
    newuser = User.create(email: params[:email],
                forename: params[:forename],
                surname: params[:surname],
                username: params[:username],
                password: params[:password])
    if newuser.errors.any?
      flash[:error] = newuser.errors.full_messages.first
      redirect_to ('/users/new') and return
    end
    session[:user_id] = User.return_user_id(params[:username])
    redirect_to :controller => 'spaces', :action => 'index'
  end

  def index
    redirect_to :controller => 'users', :action => 'new'
  end
end
