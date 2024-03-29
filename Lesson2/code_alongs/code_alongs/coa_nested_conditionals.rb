################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 2.5
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################

programs_day_of_week = "tuesday"
programs_number = 3

# 1. Let's get input from our User and see if they can guess which day
#    of the week we are thinking of.
#
#    Ask the User, "What day of the week am I thinking of?" and capture
#    their input in the variable `guess`.

print "What day of the week am I thinking of? "
guess = gets.chomp

# 2. By default, `programs_day_of_week` is set to Tuesday. Let's compare
#    our variable to what the User inputted. If they got it right, tell
#    them "Correct!" otherwise tell them "Wrong!"

if(guess == programs_day_of_week)
	puts "Correct"
else
	puts "Wrong"
end	
# 3. Now let's try seeing if two things are true at the same time.
#
#    Ask your User for a day of the week and then for a number. Remember
#    to cast your User's input appropriately when comparing values!
#
#    Then use a conditional to see if both the number and the day of
#    week are correct. If both are correct, tell the User "Correct!"
#
#    If only the number is correct, tell them "Number Correct!"
#
#    If only the day of the week is correct, tell them "Day of week
#    Correct!"
#
#    Otherwise, tell them "Wrong!"
day_of_week = "monday"
number = 12

print "Give me a day : "
day_guess = gets.chomp

print "Give me a number : "
num_guess = gets.chomp

when day_guess == day_of_week && num_guess == number
	puts  "Correct"
when day_guess == day_of_week
	puts "Day of Week Correct "	
when num_guess.to_i == number
		puts "Number Correct"	
	end	
end
# 4. One last time, ask again for a day of the week and a number, except
#    this time only one of them needs to be correct to "win"! But if
#    they don't guess either correctly, they "lose"!
print "Give me a day : "
day_guess = gets.chomp

print "Give me a number : "
num_guess = gets.chomp

if day_guess == day_of_week || num_guess.to_i == number
	puts  "Win"
else
	"Lose"	
end

