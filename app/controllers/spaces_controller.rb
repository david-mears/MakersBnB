class SpacesController < ApplicationController
  def new
  end

  def show
    @spaces = Space.all
    render 'index'
  end
end
