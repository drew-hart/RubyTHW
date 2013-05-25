def prompt()
	print ">"
end

# Gold room function
def gold_room()
	puts "This room is full of gold. How much do you take?"

	prompt; next_move = gets.chomp

	#variables to check input from user
	input_okay = true;
	letters = ('a'..'z')

	# Check to see if the input included any letters, if so set input_okay to false
	letters.each do |letter|
		if next_move.include? letter
			input_okay = false;
		elsif next_move.include? 
			input_okay = true;
		end
	end

	if input_okay == true
		how_much = next_move.to_i()
	else
		dead("Man, learn to type a number.")
	end

	# Let's run through the core logic of this funciton
	if how_much < 50
		puts "Nice, you're not greedy, you win!"
		Process.exit(0)
	else
		dead("You greedy bastard!")
	end
end

# Bear room function
def bear_room()
	puts "There is a bear hear."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	bear_moved = false

	while true
		prompt; next_move = gets.chomp

		if next_move.include? "honey"
			dead ("The bear looks at you then slaps your face off.")
		elsif next_move.include? "taunt" and not bear_moved
			puts "The bear has moved from the door. You may go through it now."
			bear_moved = true
		elsif next_move.include? "taunt" and bear_moved
			dead("The bear gets pissed off and chews your legs off")
		elsif next_move.include? "open" and bear_moved
			gold_room()
		else
			puts "I got not idea what that means."
		end
	end
end

# Cthulhu room function
def cthulhu_room()
	puts "Here you see the great evil Cthulhu."
	puts "He, it, whatever stares at you and you go insance."
	puts "Do you flee for your life or eat your head?"

	prompt; next_move = gets.chomp

	if next_move.include? "flee"
		start()
	elsif next_move.include? "head"
		dead("Well that was tasty!")
	else
		cthulhu_room()
	end
end

# Dead function
def dead(why)
	puts "#{why} Good job!"
	Process.exit(0)
end

# Start function
def start()
	puts "You are in a dark room."
	puts "There is a door to your right and left."
	puts "Which one do you take?"

	prompt; next_move = gets.chomp

	if next_move == "left"
		bear_room()
	elsif next_move == "right"
		cthulhu_room()
	else
		dead("You stumble around the room until you starte.")
	end
end

start()