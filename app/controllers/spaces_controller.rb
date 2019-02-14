class SpacesController < ApplicationController
  def new
  end

  def create
    Space.create(name: params[:name], description: params[:description], price: params[:price], user_id: session[:user_id])
    redirect_to :action => 'index' 
  end


  def show
    @space = Space.find_by(id: params[:id])
    render '1'
  end

  def index
    @spaces = Space.all
    render 'index'
  end
end
