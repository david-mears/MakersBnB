class SpacesController < ApplicationController
  def new
  end

  def create
    @space = Space.create(name: params[:name], description: params[:description], price: params[:price])
    p @space
    redirect_to '/spaces'
  end

  def show
    @spaces = Space.all
    p Space.all
    render 'index'
  end
end
