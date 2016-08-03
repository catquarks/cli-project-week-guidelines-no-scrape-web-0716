require 'pry'
require_relative '../runners/cat_runner'
require_relative '../data_fetchers/cat_fetch'

system("clear")

runs_with_cats = CatCLI.new

runs_with_cats.call

runs_with_cats.help

category = runs_with_cats.give_category

cat_fetch = CatFetch.new(category)

cat_hash = cat_fetch.get_cats_from_api(cat_fetch.format_url)

cat_fetch.get_cat_pics(cat_hash)

