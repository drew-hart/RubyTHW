# create a mapping of state to abbreviation
states = {
	'Alabama'				=>'AL',
	'Alaska'				=>'AK',
	'Arizona'				=>'AZ',
	'Arkansas'				=>'AR',
	'California'			=>'CA',
	'Colorado'				=>'CO',
	'Connecticut'			=>'CT',
	'Delaware'				=>'DE',
	'Florida'				=>'FL',
	'Georgia'				=>'GA',
	'Hawaii'				=>'HI',
	'Idaho'					=>'ID',
	'Illinois'				=>'IL',
	'Indiana'				=>'IN',
	'Iowa'					=>'IA',
	'Kansas'				=>'KS',
	'Kentucky'				=>'KY',
	'Louisiana'				=>'LA',
	'Maine'					=>'ME',
	'Maryland'				=>'MD',
	'Massachusetts'			=>'MA',
	'Michigan'				=>'MI',
	'Minnesota'				=>'MN',
	'Mississippi'			=>'MS',
	'Missouri'				=>'MO',
	'Montana'				=>'MT',
	'Nebraska'				=>'NE',
	'Nevada'				=>'NV',
	'New Hampshire'			=>'NH',
	'New Jersey'			=>'NJ',
	'New Mexico'			=>'NM',
	'New York'				=>'NY',
	'North Carolina'		=>'NC',
	'North Dakota'			=>'ND',
	'Ohio'					=>'OH',
	'Oklahoma'				=>'OK',
	'Oregon'				=>'OR',
	'Pennsylvania'			=>'PA',
	'Rhode Island'			=>'RI',
	'South Carolina'		=>'SC',
	'South Dakota'			=>'SD',
	'Tennessee'				=>'TN',
	'Texas'					=>'TX',
	'Utah'					=>'UT',
	'Vermont'				=>'VT',
	'Virginia'				=>'VA',
	'Washington'			=>'WA',
	'West Virginia'			=>'WV',
	'Wisconsin'				=>'WI',
	'Wyoming'				=>'WY'
}

# create a basic set of states and some cities in them
cities = {
	'AL' => 'Montgomery', 
	'AK' => 'Juneau', 
	'AZ' => 'Phoenix', 
	'AR' => 'Little Rock', 
	'CA' => 'Sacramento', 
	'CO' => 'Denver', 
	'CT' => 'Hartford', 
	'DE' => 'Dover', 
	'FL' => 'Tallahassee', 
	'GA' => 'Atlanta', 
	'HI' => 'Honolulu', 
	'ID' => 'Boise', 
	'IL' => 'Springfield', 
	'IN' => 'Indianapolis', 
	'IA' => 'Des Moines', 
	'KS' => 'Topeka', 
	'KY' => 'Frankfort', 
	'LA' => 'Baton Rouge', 
	'ME' => 'Augusta', 
	'MD' => 'Annapolis', 
	'MA' => 'Boston', 
	'MI' => 'Lansing', 
	'MN' => 'St. Paul', 
	'MS' => 'Jackson', 
	'MO' => 'Jefferson City', 
	'MT' => 'Helena', 
	'NE' => 'Lincoln', 
	'NV' => 'Carson City', 
	'NH' => 'Concord', 
	'NJ' => 'Trenton', 
	'NM' => 'Santa Fe', 
	'NY' => 'Albany', 
	'NC' => 'Raleigh', 
	'ND' => 'Bismarck', 
	'OH' => 'Columbus', 
	'OK' => 'Oklahoma City', 
	'OR' => 'Salem', 
	'PA' => 'Harrisburg', 
	'RI' => 'Providence', 
	'SC' => 'Columbia', 
	'SD' => 'Pierre', 
	'TN' => 'Nashville', 
	'TX' => 'Austin', 
	'UT' => 'Salt Lake City', 
	'VT' => 'Montpelier', 
	'VA' => 'Richmond', 
	'WA' => 'Olympia', 
	'WV' => 'Charleston', 
	'WI' => 'Madison', 
	'WY' => 'Cheyenne'
}

# puts out some cities
puts '-' * 10
puts "NY State has: ", cities['NY']
puts "OR State has: ", cities['OR']

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: ", states['Michigan']
puts "Florida's abbreviation is: ", states['Florida']

# do it by using the state then cities dict
puts "-" * 10
puts "Michigan has: ", cities[states['Michigan']]
puts "Florida has: ", cities[states['Florida']]

# puts every state abbreviation
puts "-" * 10
for state, abbrev in states
	puts "%s is abbreviated %s" % [state, abbrev]
end

# puts every city in state
puts '-' * 10
for abbrev, city in states
	puts "%s has the city %s" % [abbrev, city]
end

# now do both at the same time
puts '-' * 10
for state, abbrev in states
	puts "%s state is abbreviated %s and has city %s" % [state, abbrev, cities[abbrev]]
end

puts '-' * 10
# if it's not there you get nil
state = states['Texas']

if not state
	puts "Sorry, no Texas."
end

# get a city with a default value
city = cities['TX'] || 'Does Not Exist'
puts "The city for the state 'TX' is: %s" % city

puts '-' * 10
puts states.hash

puts '-' * 10
puts states.to_s

puts '-' * 10
puts states.invert.keys.sort.reverse

puts '-' * 10
puts states.length

puts '- * ' * 10 + '-'
puts states.select{|key, value| key.length < 12 }