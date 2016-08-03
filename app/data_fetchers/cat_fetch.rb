require 'pry'
require 'httparty'
require 'json'

class CatFetch

	attr_accessor :category, :format_url
	attr_reader :base_url

	def initialize(category)
		@base_url = 'http://thecatapi.com/api/images/get?format=xml&results_per_page=5&'
		@category = category

	end

	def format_url
  	# binding.pry
  	@format_url = "#{base_url}category=#{@category}"

	end


	def get_cats_from_api(url_with_category)
		HTTParty.get(url_with_category)
	end


	def get_cat_pics(cat_hash)
		# binding.pry
		cat_list = cat_hash["response"]["data"]["images"]["image"].collect { |cat| cat["url"] }

		cat_list.each do |cat_url|
			puts "OMG A CAT WITH #{@category.upcase}!"
			system("xdg-open #{cat_url}")
		end
	end

		### this is our old method ###

	# def get_cats_from_api(url_with_category)
	# 	system("xdg-open #{url_with_category}")
	# end


end








# binding.pry
# cat_hash = JSON.parse(response)


# puts response.body, response.code, response.message, response.headers.inspect

# Or wrap things up in your own class
# class StackExchange
#   include HTTParty
#   base_uri 'api.stackexchange.com'

#   def initialize(service, page)
#     @options = { query: {site: service, page: page} }
#   end

#   def questions
#     self.class.get("/2.2/questions", @options)
#   end

#   def users
#     self.class.get("/2.2/users", @options)
#   end
# end

# stack_exchange = StackExchange.new("stackoverflow", 1)

