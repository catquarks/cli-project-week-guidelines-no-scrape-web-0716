require 'pry'

class CatCLI

  attr_reader :category

  def call
    puts "Welcome! We have every cat you could possibly desire! We have cats with 'hats', 'sunlasses', 'space', 'caturday', 'sinks', etc!"
    run
  end
    
  def get_user_input
    gets.strip.downcase
  end

  def run

      puts "What would you like to do? Here are your options:"
      puts "- help"
      puts "- exit"
      puts "- show me cats"

      input = get_user_input

      if input == "show me cats"
        get_category_from_user

      elsif input == "help"
        help

      elsif input == "exit"
        exit

      else
        puts "Sorry, I didn't understand your accent."
      end

  end

  def get_category_from_user
    categories = %w[hats space funny sunglasses boxes caturday ties dream kittens sinks clothes]

    puts "Purrrrr-fect! Please choose a cat from these fine CATegories:"

    categories.each {|cat| puts cat}

    input = gets.strip.downcase

    @category = input

     if categories.include?(category)
      return category
    end

  end

  def give_category
    # binding.pry
    self.category
  end

  def help
    puts "Type 'exit' to exit"
    puts "Type 'help' to view this menu again"
    puts "Type 'show me cats' to see cats"
  end

end

