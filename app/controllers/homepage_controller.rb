class HomepageController < ApplicationController
  def index
  	@page_number = params[:page] || 1
  	@results = TMDB_Discover_Movie.for @page_number
  end
end
