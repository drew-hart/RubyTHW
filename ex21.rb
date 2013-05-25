def add(a, b)
	puts "ADDING #{a} + #{b}"
	# The last evaluated statement in a function is the return value of the function, so being explicit here is optional
	return a + b
end

def subtract(a, b)
	puts "SUBTRACTING #{a} - #{b}"
	# The last evaluated statement in a function is the return value of the function, so being explicit here is optional
	return a - b
end

def multiply(a, b)
	puts "MULTIPLYING #{a} x #{b}"
	# The last evaluated statement in a function is the return value of the function, so being explicit here is optional
	return a * b
end

def divide(a, b)
	puts "DIVIDING #{a} / #{b}"
	# The last evaluated statement in a function is the return value of the function, so being explicit here is optional
	return a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78,4)
weight = multiply(90,2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it anyway.
puts
puts "Here is the puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
puts "That becomes: #{what} ... Can you do it by hand"

puts
puts "Let's break down the puzzle now by doing it manually:..."
result_1 = divide(iq, 2)
result_2 = multiply(weight, result_1)
result_3 = subtract(height, result_2)
result_4 = add(age, result_3)
puts "Results of doing the formula manually is: #{result_4}"

