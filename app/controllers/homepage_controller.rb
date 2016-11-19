class HomepageController < ApplicationController
  def index
  	@page_number = 1
  	@results = TMDB.for 1, 2, 3 
  end
end
