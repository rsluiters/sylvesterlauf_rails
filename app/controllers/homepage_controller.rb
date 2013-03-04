class HomepageController < ApplicationController
  def index
  end

  def strecke
    @course = params[:course] || "5km"
  end

  
  def googlemaps
    @course = params[:course]
    render :layout => false
  end
end