name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # in inches
height_centimeters = height / 0.39370
weight_lbs = 180 # in lbs
weight_kg = weight_lbs / 2.205

eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches tall and %d centimeters tall." % [height, height_centimeters]
puts "He's %d pounds heavy and %d kilos heavy." % [weight_lbs, weight_kg]
puts "Actually, that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

puts "If I add %d, %d, and %d I get %d" % [age, height, weight_lbs, age	+ height + weight_lbs]
