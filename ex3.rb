puts "I will now count my chickens:"

# devides 30 by 6 and then adds 25
puts "Hens", 25 + 30 / 6

# Multiplies 25 * 3 then takes the remainder of the result when divided by 4
# 75 / 4 = 18 with a remainder of 3.  3 is used to subtract from 100, leaveing 97 as the results
# Note that the calculation performs left to right here or that the "*" has a higher math precendence than the "%"
puts "Roosters", 100 - 25 * 3 % 4

# print
puts "Now I will count the eggs:"

# Comments ...
# 4 % 2 = 0
# 1 / 4 = 0 and not 0.25

puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

puts "Is it true that 3 + 2 < 5 - 7?"

# add 3 +2, compare to 5 - 7 and let us know if that's true or false
puts 3 + 2 < 5 - 7

puts "What is 3 + 2?", 3 + 2
puts "What is 5 - 7?", 5 - 7

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater?", 5 > -2
puts "Is it greater or equal?", 5 >= -2
puts "Is it less or equal?", 5 <= 2