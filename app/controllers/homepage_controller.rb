class HomepageController < ApplicationController
  def index
    @news=News.newest
  end

  def strecke
    @course = params[:course] || "5km"
  end

  
  def googlemaps
    @course = params[:course]
    render :layout => false
  end
  
  def contact
  end
end