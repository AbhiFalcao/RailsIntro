###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator. 
#
# 2. Ask the user for their name and store it in a variable.
#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
#
# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
#    
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#		
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
# Author Abhi Falcao 
# Dated 03/04/2013
# 
# Note: print method has been used where there are user inputs to be on the same line.

puts "Welcome to the Secret Number Game!"

# String variables to store first name. 
print "Enter Your Name : "
first_name = gets.chomp

# Interger variable to count the guesses. 
# Note: You can change this number to increase the number of guesses.
guesses_left  = 3 

# String interpolation to display the first name. 
puts "Hi #{first_name}, you have #{guesses_left} guesses to guess the Secret Number between 1 and 10."

# Generate random number between 1 to 10 as a secret number 
secret_number = rand(1 .. 10)

# Run the loop for number of guesses.
while guesses_left > 0 

	# User input number
	print "Enter Number : "
	guessed_number = gets.chomp

	# Condition that checks if the guessed number is right and breaks the loop.
	if guessed_number.to_i == secret_number
		puts "You got it Right!"
		break
	end 

	# Condition that checks if the guessed number is higher or lower 
	# and display the message along with number of guesses left.  	
	if guessed_number.to_i > secret_number && guesses_left.to_i > 1
		puts "Guess Lower, Guesses Left : #{guesses_left - 1}"
	elsif	guessed_number.to_i < secret_number && guesses_left > 1
		puts "Guess Higher, Guesses Left : #{guesses_left - 1}"
	else
		puts "The Secret Number Was #{secret_number}"	
	end		

	# Subtract number of guesses left by 1
	guesses_left = guesses_left - 1

end
# End of Loop

###############################################################################