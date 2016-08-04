require 'pry'

class CatCLI

  attr_reader :category

  def call
    puts "Welcome! We have every cat you could possibly desire!"
  end

  def help
    puts "What would you like to do? Here are your options:"
    puts "- help (to view this menu again)"
    puts "- exit"
    puts "- show me cats"
    run
  end

  def sorry
    puts "Sorry, I don't understand your accent."
    help
  end

  def get_user_input
    gets.strip.downcase
  end

  def run

    input = get_user_input

    if input == "show me cats"
      get_category_from_user

    elsif input == "help"
      help

    elsif input == "exit"
      exit

    else
      sorry
    end

  end

  def get_category_from_user
    categories = %w[hats space funny sunglasses boxes caturday ties dream sinks clothes]

    puts "Purrrrr-fect! Please choose a cat from these fine CATegories:"

    categories.each {|cat| puts cat}

    input = gets.strip.downcase

    @category = input

     if categories.include?(category)
      return category

    else
      sorry
    end

  end

  def cat_runner
    self.call
    self.help
    self.category
  end

end