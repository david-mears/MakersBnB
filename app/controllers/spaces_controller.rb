class SpacesController < ApplicationController
  def new
  end

  def create
    Space.create(name: params[:name], description: params[:description], price: params[:price], user_id: 1)
    redirect_to '/spaces'
  end

  def show
    @spaces = Space.all
    @users = User.all
    @availabilities = Availability.all
    render 'index'
  end

end
