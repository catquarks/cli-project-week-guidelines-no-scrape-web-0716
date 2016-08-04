require 'pry'
require 'httparty'

class CatFetch

	attr_accessor :category, :format_url
	attr_reader :base_url

	def initialize(category)
		@base_url = 'http://thecatapi.com/api/images/get?format=xml&results_per_page=7&'
		@category = category

	end

	def format_url
  	@format_url = "#{base_url}category=#{@category}"
	end


	def get_cats_from_api(url_with_category)
		HTTParty.get(url_with_category)
	end

	def make_cat_hash
		self.get_cats_from_api(self.format_url)
	end


	def get_cat_pics
		cat_list = self.make_cat_hash["response"]["data"]["images"]["image"].collect { |cat| cat["url"] }

		cat_list.each do |cat_url|
			puts "OMG A CAT WITH #{@category.upcase}!"
			system("xdg-open #{cat_url}")
		end
	end

end
