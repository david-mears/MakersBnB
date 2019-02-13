class SpacesController < ApplicationController
  def new
  end

  def create
    Space.create(name: params[:name], description: params[:description], price: params[:price], user_id: session[:user_id])
    redirect_to '/spaces/show'
  end

  def show
    @spaces = Space.all
    render 'index'
  end

end
