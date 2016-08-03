require 'pry'

class CatModel

  attr_reader :parameter

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



  def get_parameter_from_user
    parameters = []

   # puts "Purrrrr-fect! Please choose one of these parameters:"

    parameters.each {|cat| puts cat}

    input = gets.strip.downcase

    @parameter = input

     if parameters.include?(parameter)
      return parameter

    else
      sorry
    end

  end

  def give_parameter
    # binding.pry
    self.parameter
  end


  def sorry
    puts "Sorry, I didn't understand your accent."
    run
  end

end

