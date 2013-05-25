
# Defines a method called 'cheese_and_crackers' with two inputs for variables of cheese_coutn and boxes_of_crackers
# It then performs some sillly printing related to those two variables
def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket."
	puts # this is blank line
end

# With the function defined above, we can provide vide it number directly 
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# Heer we create two variables, assign values to those variables and then pass them into the function
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# Here we're performing some operations within the variable assignments
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# Same thing, but this time it's combining the variable names & some math...wow.
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def pbr_and_ruby(cans_of_pbr, lines_of_code)
	puts "You have drank #{cans_of_pbr} cans of pbr!"
	puts "You have written #{lines_of_code} lines of code in ruby"
	puts
end

pbr_and_ruby(3, 100)