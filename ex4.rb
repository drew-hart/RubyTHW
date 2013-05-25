
# Total number of cars available.
cars = 100

# The space in each car, they are all the same.
space_in_a_car = 4

# Total number of drivers available.
drivers = 30

# Total number of passengers; assume passengers can't drive?
passengers = 90

# Total number of cars that are not driven.
cars_not_driven = cars - drivers

# Total number cars driven is limited by the number of drivers, so set them equal.
cars_driven = drivers

# Carpool capacity is calculated by the number of cars times the space in each car.
carpool_capacity = cars_driven * space_in_a_car

# The average number of passengers per car calculated by total passengers divided by cars driven.
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts
puts "There are %d cars available." % cars
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
