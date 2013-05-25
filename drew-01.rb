beans = ['broad', 'mung', 'black', 'red', 'white']
colors = ['black', 'red', 'blue', 'green']

common = (beans + colors).uniq

puts "The first color of beans is: ", beans.shift

common.each do |dup|
	puts dup
end