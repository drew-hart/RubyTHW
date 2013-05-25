user = ARGV.first
first, second, third = ARGV

puts "The variables: #{user}, #{first}, #{second}, #{third}"

prompt = '> '

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt

# chomp removes trailing whitespace
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt

# chomp removes trailing whitespace
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
MESSAGE