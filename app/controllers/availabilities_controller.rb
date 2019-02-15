class AvailabilitiesController < ApplicationController
  def new

  end

  def create
    redirect_to :controller => 'spaces', :action => 'index'
  end

end
