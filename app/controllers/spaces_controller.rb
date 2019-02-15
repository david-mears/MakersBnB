class SpacesController < ApplicationController
  def new
  end

  def create
    Space.create(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      user_id: session[:user_id])
    redirect_to :action => 'index'
  end

  def show
    @dates = Space.left_outer_joins(:availability)
                             .where(spaces: { id: params[:id] })
                             .select('spaces.*', 'availabilities.date')
                             .pluck(:date)
    @space = Space.find_by(id: params[:id])
    render 'show'
  end

  def index
    @spaces = Space.all
    @space = Space.find_by(id: params[:id])
    render 'index'
  end
end
