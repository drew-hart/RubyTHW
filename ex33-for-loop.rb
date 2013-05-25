
# Function for printing a prompt to the user
def prompt
	print "> "
end

# Function for getting input from the user.  Print a prompt, get a number.
def get_upper_limit
	prompt
	increase = STDIN.gets.chomp.to_i
	prompt
	upper_limit = STDIN.gets.chomp.to_i
	values = [increase, upper_limit]
end

# While loop demo. Prints number at the top and bottom of the while loop
def number_generator(values)
	
	increase = values[0]
	upper_limit = values[1]

	# setup variables
	i = 0
	numbers = []

	# while loop
	while i < upper_limit
		# print the value of i at start of loop
#		puts "At the top, i has the value of #{i}"
		numbers.push(i)

		i = i + increase

		puts "The size of the numbers array is now: #{numbers}"
		
		# print the value of i at end of loop
#		puts "At the bottom, i has the value of #{i}"
	end

	return numbers
end


numbers = number_generator(get_upper_limit)

# Simple loop to print every number from low to high
numbers.each do |num|
	puts num
end