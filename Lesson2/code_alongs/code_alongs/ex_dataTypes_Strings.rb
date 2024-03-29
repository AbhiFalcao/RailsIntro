################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise dataTypes_Strings
#
################################################################################

# 1. Create 4 new variables, `month`, `day`, `day_of_week` and `year`.
#    Assign each variable appropriately for today's date.
#
#    Example: Tuesday, September 19, 1985
#
#    `Month` should be a Symbol, `day` should be an Integer, `day_of_week`
#    should be a String, and `year` an Integer.
month = "March"
day = 27
day_of_week = "Wednesday"
year = 2013

# 2. Construct a sentence of Today's date by concating the above
#    variables like the example. Remeber to cast appropriately.
puts "Concating : " + day_of_week + " " + "#{day}" +  " " + month + " #{year}"


# 3. Now, construct the same sentence using String interpolation
#    instead!
#
#    Hint: Do you still need to cast your variables to Strings?

puts "Interpolation : #{day_of_week} #{day} #{month} #{year}"


# 4. Let's try and mix things up a bit! Now we are going to take input
#    from the command line and change it so that we can display whatever
#    date the User would like to display.
#
#    prompt the user to enter the day of the week, and store the response in a variable day_of_week
print "Enter Day of Week : "
day_of_week = gets.chomp

# 6. Now ask for the month and capture that data in the variable month.

print "Enter Month : "
month = gets.chomp
# 7. Ask for the day and capture that data in the variable day.

print "Enter day : "
day = gets.chomp

# 8. And finally, do the same for the year!

print "Enter Year : "
year = gets.chomp

# 9. Use String interpolation to display the inputted full date to the user.
puts "User Input :  #{day_of_week} #{day} #{month} #{year}"


