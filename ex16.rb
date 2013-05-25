# Take in the first argument from the command line...

filename = ARGV.first

# Default variable of current ruby file...are there others?
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

# Code for extra credit 2...the single line way...I'm starting to get it! :)
puts "Extra credit 2: Here's the current contents of the file, which will now be wiped... \n" + File.open(ARGV.first).read()

puts "Opening the file (and wiping it mind you)..."
target = File.open(filename, "w")

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

# Let's get some new text from the user...3 of them here...
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

# Info...
puts "I'm goint to write these to the file."

target.write("%s\n%s\n%s\n" % [line1, line2, line3])

puts "And finally, we close it."
target.close()

