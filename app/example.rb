require 'pry'
require 'httparty'
require 'json'

# base_url = 'http://thecatapi.com/api/images/get?format=xml&'

response = HTTParty.get('http://thecatapi.com/api/categories/list')
#results_per_page=20&category=hats'

categories = response["response"]["data"]["categories"]["category"]


# binding.pry

categories.each do |category|
	category.select do |key, value|
		key == "name"
			# value
		end
	end




# # puts answer

    
#   def get_user_input
#     gets.chomp.strip.downcase
#   end

#   def run

#     input = ""
#     # move_on = 0

#     while input != "show me cats"

#       puts "What would you like to do? Here are your options:"
#       puts "-'help'"
#       puts "-'exit'"
#       puts "-'show me cats'"
#       input = get_user_input
#       if input == "help"
#         help
#       elsif input == "exit"
#         exit

#       elsif input == "show me cats"
#         # move_on = 1
#         break

#       else
#         puts "Sorry, I didn't understand your accent."
#       end

#     end

# puts "no"

# end

# binding.pry