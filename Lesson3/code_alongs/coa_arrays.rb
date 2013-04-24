################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Arrays 
# Learning Objective: Introduce array syntax.
# Note: This is a cumulative example. 
#
################################################################################


# 1. Create an array that stores three different months ("January, February, March").
months = %w(January February March)

puts months
# 2. Add two more months to your array in a single expression ("April May").

months += %w(April May)

puts  months
# 3. Convert your name to an array, and display it, in a single expression

puts "Abhi, Domnic, Falcao".split(",")
# 4. Remove and display the last value in the months array.
# Was April and May removed why or why not.

x = months.pop

print months
