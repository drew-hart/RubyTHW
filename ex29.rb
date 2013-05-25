people = 20
cats = 30
dogs = 15

if people < cats
	puts "Too many cats! The world is doomed!"
end

if people > cats
	puts "Not many cats! The world is saved!"
end

if people < dogs
	puts "The world is drooled on!"
end

if people > dogs
	puts "The world is dry!"
end

dogs += 6

if people >= dogs
	puts "People are greater or equal to dogs."
end

if people <= dogs
	puts "People are less than are equal to dogs."
end

if people != dogs
	puts "People are not dogs! :)"
end
