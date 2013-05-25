# Make the input_file the first argument from the command line.  An alternative is "ARGV.first"
input_file = ARGV[0]


# Create a function that prints the entire file.
def print_break(a)
	puts "#" * a
end

def print_all(f)
	puts f.read()
	print_break(80)
end

# This function resets where you will currently read from in a file.  In this case back to line 0 (the beginning)
def rewind(f)
	f.seek(0,IO::SEEK_SET)
	print_break(80)
end

def print_a_line(line_count, f)
	puts "printing part 1 of print_a_line..."
	puts "#{line_count} #{f.readline()}"
	print_break(80)
end

def recursive_print(line_count, f)
	return if f.eof?
	puts "#{line_count}: #{f.readline()}"
	recursive_print(line_count + 1, f)
end

current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line
print_all(current_file)

puts "Now let's rewind, kind of like a tape."
rewind (current_file)

puts "Let's print three lines:"
current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

puts "Recursive printing..."
rewind(current_file)
recursive_print(0, current_file)

# Good habit to close the file.
current_file.close()