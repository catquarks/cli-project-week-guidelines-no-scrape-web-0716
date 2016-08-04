require 'pry'
require_relative '../runners/cat_runner'
require_relative '../data_fetchers/cat_fetch'

system("clear")

category = CatCLI.new.cat_runner

CatFetch.new(category).get_cat_pics
