###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Put your solution below this line.
#
#
# Author Abhi Falcao 
# Dated 09/04/2013
#
# Note: print method has been used where there are user inputs to be on the same line.
# Array that generates integers from 1-10
set_of_numbers = Array(1..10)

# Interger that stores a random interger from the set_of_numbers array.
secret_number = set_of_numbers[rand(set_of_numbers.length - 1)]

# Hash that keys display messages 
messages = {win: "You Win", lose: "You Lost", too_low: "Too Low", too_high: "Too High"}

# Number of guesses. 
# Note: Change this number to allow user for more guesses. 
guesses_left = 3

# Set the counter to iterate the number of guesses
counter = guesses_left - 1

puts "You have #{guesses_left} guesses in this game."

# Times loop to iterate the number of guesses
guesses_left.times do  

	# User input number
	print "Enter Number : "
	guessed_number = gets.chomp

	# Condition that checks if the guessed number is right and breaks the loop.
	if guessed_number.to_i == secret_number
		puts "#{messages[:win]}"
		break
	end 

	# Condition that checks if the guessed number is higher or lower 
	# and display the message from the hash along with number of guesses left.  	
	if guessed_number.to_i > secret_number && counter.to_i > 0
		puts "#{messages[:too_high]}, Guesses Left : #{counter}"
	elsif guessed_number.to_i < secret_number && counter.to_i > 0
		puts "#{messages[:too_low]}, Guesses Left : #{counter}"
	else
		puts "#{messages[:lose]}, The Secret Number Was #{secret_number}"	
	end		

	counter -= 1

end
###############################################################################
