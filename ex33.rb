
# Function for printing a prompt to the user
def prompt
	print "> "
end

# Function for getting input from the user.  Print a prompt, get a number.
def get_upper_limit
	prompt
	upper_limit = STDIN.gets.chomp.to_i
	prompt
	increase = STDIN.gets.chomp.to_i
	values = [upper_limit, increase]
end

# While loop demo. Prints number at the top and bottom of the while loop
def number_generator(values)
	
	increase = values[1]
	upper_limit = values[0]
	
	i = 0
	numbers = []

	while i < upper_limit
		puts "At the top, i has the value of #{i}"
		numbers.push(i)

		i = i + increase

		puts "The size of the numbers array is now: #{numbers}"
		puts "At the bottom, i has the value of #{i}"
	end

	return numbers
end


numbers = number_generator(get_upper_limit)

# Simple for loop to print every number from low to high
for num in numbers
	puts num
end