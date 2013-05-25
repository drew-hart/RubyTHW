# Let's use some of Ruby's built in methods to do awesome stuff on a string

stuff = "Apples Oranges Crows Telephone Light Sugar".split(' ')

if stuff.count < 9
	puts "Wait there's not 10 things in that list, let's fix that."
else
	abort("There are more than 10 items in the list called \"ten_things\"")
end

# '%w' is a shortcut for converting a list with whitespace into an array format of ["foo", "bar"] - aka %w(foo bar)
more_stuff =  %w(Day Night Song Frisbee Corn Banana Girl Boy)

# we're not supposed to use while loops unless it's never ending. hmmm
# while stuff.length != 10
#	next_one = more_stuff.pop()
#	puts "Adding: #{next_one}"
#	stuff.push(next_one)
#	puts "There's #{stuff.length} items now."
#end

# Let's do this good.
more_stuff.each_index.each do |n|
		if stuff.length < 10
			
			stuff.push(more_stuff[n])
			puts "There's #{stuff.length} items now including #{more_stuff[n]}"
			gets.chomp
			puts $_
		elsif stuff.length > 9

			nil

		else
		
			abort("Something went wrong in function 'morestuff.each_index.each")
		
		end
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff.values_at(3, 5).join('#')