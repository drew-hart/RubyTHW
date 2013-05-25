# The first paramater from the command line is the text file
filename = ARGV.first

# Establish the formatting for the prompt, when we ask users for information
prompt = '> '

# Declare a variable called 'txt' as type file, open the file, feed it to the variable
txt = File.open(filename)

# Yep. Some printing...
puts "Here's your file: #{filename}"

# Use the 'read' function provided on the txt variable of type File.
puts txt.readlines()
txt.close()

# More printing... :)
puts "I'll also ask you to type the text file's name again:"

# Print the prompt dude...
print prompt

# Get the name of the text file again from the user using input
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)
puts txt_again.read()
txt_again.close