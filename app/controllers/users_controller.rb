require 'bcrypt'

class UsersController < ApplicationController
  def new
  end

  def create
    hash_password = BCrypt::Password.create(params[:password])

    User.create(email: params[:email],
                forename: params[:forename],
                surname: params[:surname],
                username: params[:username],
                password: hash_password)

    session[:user_id] = User.return_user_id(params[:username])
    redirect_to :controller => 'spaces', :action => 'index'
  end
end
