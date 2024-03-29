$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'secret_number'
require 'player'

class Game
  #	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess
  attr_accessor :name, :secret_number, :set_of_numbers

  @@messages = { 
    win:      "You won!",
    lose:     "You lost! :-(",
    too_low:  "Your guess was too low!",
    too_high: "Your guess was too high!" 
  }


	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class. 
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  	# initializes the current guess to nil
  def initialize(guesses_allowed=3, set_of_numbers)
    
    @guesses_allowed = guesses_allowed
    @current_guess_count = 0
   
    p = Player.new(@name)

    sn = SecretNumber.new(set_of_numbers)
    @secret_number = sn.secret_number
    @set_of_numbers = sn.set_of_numbers

    @current_guess = nil   

  end
  

  # Print who made this wonderful program :-)
  def print_created_by

    puts "Created by Abhi Falcao"

  end
  

	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
	# and they did not guess correctly. 
  # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game
    print_created_by

    print "Enter Name : "
    @name = gets.chomp

    puts "Hi #{@name} you have #{guesses_allowed} to guess the secret number between 1 to 10."

    @current_guess = @guesses_allowed 

    while @current_guess_count < @guesses_allowed do
    
      print "Enter number : " 
      guessed_number = gets.chomp

      increment_guess_count

      if guess_correct?(guessed_number.to_i)  
         break
      end     

      if guesses_left.to_i < 1
          puts "#{@@messages[:lose]}, The Secret Number was #{@secret_number}"
      end       
         
    end

  end

	# This method checks if the player guessed the correct secret number. 
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)

    if guess.to_i == @secret_number.to_i
      puts "#{@@messages[:win]}"    
      true
    elsif guess.to_i > @secret_number.to_i && @current_guess > 1 
      puts "#{@@messages[:too_high]}, Guess left #{@current_guess-1}"
      false
    elsif guess.to_i < @secret_number.to_i && @current_guess > 1
      puts "#{@@messages[:too_low]}, Guess left #{@current_guess-1}"
      false
    else
      false  
    end

  end

  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count

    @current_guess_count += 1

  end  

  # Calculates the guesses the player has left.
  def guesses_left

    @current_guess = @current_guess.to_i - 1 

  end

end