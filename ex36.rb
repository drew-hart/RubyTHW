def prompt()
	print "> "
end


def creak_path()
	puts "It's pretty smooth going so far. The trail conditions are amazing."
	puts "You're crusing through the forest now and you're coming up on a dried out creak bed"
	puts "You're going to have to make choice on how to cross the creek"
	puts "You can either put the brake on and lean back or you can control your speed and lean forward"
	puts "What are you going to do?"

	prompt; next_move = gets.chomp

	if next_move.include? "brake" or next_move.include? "back"
	
		puts "Nice work! Way to ride this trail"
		puts "It was a good choice to lean back when crossing a creak bed"
		puts "It can be tricky, since you'd think you may want to lean forward."
		puts "You pretty much never want to lean forward when going down hill."
	
	elsif next_move.include? "control" or next_move.include? "speed" or next_move.include? "forward"
	
		puts "Dude! Are you okay?"
		puts "Oh, crap. Not sure how you managed this, but the derailer is jacked"
		puts "When your traversing a creak bed, you don't ever want to learn forward."
		puts "In fact, you pretty much never want to lean forward whenever you're heading down hill."
		puts "You're going to have to walk back to the car. Watch out for other bikers on your way back."

		Process.exit(0)
	
	else
	
		dead ("You're crazy man. I have no idea why you made that choice. See you at the car.")
	
	end
		
end

def gravel_path()
	puts "Sweet! You chose the gravel path. The path has a slight decline."
	puts "You've got a good amount of speed right now and you're coming up on a turn."
	puts "Looks like it's a pretty sharp turn plus you can't see around it."
	puts "Do you want to brake or power through the turn?"

	prompt; next_move = gets.chomp

	if next_move.include? "brake"
		puts "Bummer dude. You fell over because you slowed down too much when you cornered the turn."
		puts "Remember not to brake too much on turns, you lose speed and then the control of your bike."
		puts "You're all good, so let's keep riding"
		puts ""
	elsif next_move.include? "power"
		puts "SWEET! Nice work on that, now go enjoy the rest of this section of the track"
	else
		dead ("You have to let me know what you're going to do")
	end
	creak_path()

end

def gas_station()
	puts "You're heading up to a gas station. Time to take a break or press on?"

	prompt; next_move = gets.chomp

	if next_move.include? "break" or next_move.include? "take"
		"Cool. Take a break and get some liquids in you"
	elsif next_move.include? "press" or next_move.include? "on"
		"Right on. Let's finish this course up."
	else
		puts "I'm going to need some help.  Let me ask you again."
		gas_station()
	end
end

def dirt_path()
	puts "All right. You're on a really nice dirt path. The trail conditions are perfect today."
	puts "You've been cruising along for some time and everything is going great."
	puts "In front of you there's a pretty steap hill and looks like the path is leading that way."
	puts "You're going to have to get some speed up to get a jump on the hill."
	puts "Crap, it's not enough though. You've got to make choice on how to get up this hill"
	puts "		You can either stand up and use your weight to power up the hill"
	puts "		Or you can hunker down, lean forward and grind it out!"
	puts" What you gonna do?"

	prompt; next_move = gets.chomp

	if next_move.include? "stand" or next_move.include? "weigth" or next_move.include? "power"
		puts "Whoa boy, I saw that coming when you started"
		puts "Good thing you didn't fall or hurt yourself."
		puts "Just remember, if going up a hill you want to lower your center of gravity and power up the hill."
		puts "Be sure to use the up and down strock while you're peddling. You'll power right up the hill."
	elsif next_move.include? "hunker" or next_move.include? "down" or next_move.include? "lean" or next_move.include? "grind"
		puts "Hell yes! It's amazing how you can just crush a hill like that."
		puts "You can get more power by leaning forward and staying down plus"
		puts "shift your butt as far back to get it over the rear axel, as much as you can."
		puts "That's a trick most new riders don't know and saves energy big time."
	else
		puts "I am not sure what you're trying to do on that one, but let's just keep going"
	end

	gas_station()
end


def dead(why)
	puts "#{why}"
	Process.exit(0)
end

def start()
	puts "So you've decided to go mountain biking. Clip in and let's get started..."
	puts "You're in a parking lot and heading towards the trail head"
	puts "As you approach the trail head, you have three options:"
	puts "    You can go to the left along a gravel path"
	puts "    Or you can go to the right along a dirt path"
	puts "    Or you can bail and go back to the car and wait for your buddies to finish."

	prompt; next_move = gets.chomp

	if next_move.include? "left" or next_move.include? "gravel"
		gravel_path()
	elsif next_move.include? "right" or next_move.include? "dirt"
		dirt_path()
	else
		dead("Right on. Enjoy hanging back at the car. Catch you in about an hour!")
	end
end

start()