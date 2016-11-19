class TMDB
	include HTTParty

	base_uri 'https://api.themoviedb.org/3/discover/movie'
	default_params language: "en-US", sort_by: "popularity.desc", include_adult: "false", include_video: "true", api_key: ENV['TMDB_API_KEY']
	format :json

	def self.for *page_number
		result_arr = Array.new
		page_number.each do |page_num|
			res = get("", query: {page: page_num})["results"]
			res.each do |r|
				result_arr << r
			end
		end
		result_arr
	end
end