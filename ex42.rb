## Animal is-a object look at the extra credit
class Animal
	def speak
		puts "noise"
	end
end

# Dog is-a Animal
class Dog < Animal

	def initialize(name)
		# has-a relationship
		@name = name
	end
	attr_accessor :name

	def speak
		puts "bark!"
	end

end

# Cat is-a Animal
class Cat < Animal

	def initialize(name)
		# has-a relationship
		@name = name
	end
	attr_accessor :name

	def speak
		puts "meow!"
	end
end

# No relationship
class Person
	def initialize(name)
		# has-a relationship
		@name = name

		# Person has-a pet of some kind
		@pet = nil
	end
	attr_accessor :pet

	def speak
		puts "hello."
	end
end

## Employee is-a Person
class Employee < Person

	def initialize(name, salary)
		#has-a relationship
		super(name)

		#has-a relationship
		@salar = salary
	end
end

# no relationship
class Fish
end

# Salmon is-a Fish
class Salmon < Fish
end

#Halibut is-a Fish
class Halibut < Fish
end

# Rover is-a Dog
rover = Dog.new("Rover")

# Satan is a Cat
satan = Cat.new("Satan")

# Mary is a Person
mary = Person.new("Mary")

# Mary has-a pet
mary.pet = satan

# Frank is-a Employee
frank = Employee.new("Frank", 120000)

# Frank has-a pet
frank.pet = rover

# flipper is-a Fish
flipper = Fish.new()

# crouse is-a Salmon 
crouse = Salmon.new()

# harry is-a Halibut
harry = Halibut.new()

pack = [rover, satan]

pack.each do |animal|
	puts animal.name
end


















