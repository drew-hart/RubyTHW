require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|

# prints each line from the variable "f", which in this case is the html for the above URL
	f.each_line {|line| puts line}

# Prints the base universal resource identifier
	puts f.base_uri			# <URI::HTTP:0x40e6ef2 URL:http://www.ruby-lang.org/en/>

# Prints the content type of the variable f
	puts f.content_type		# "text/html"

# Prints the charset used in variable f
	puts f.charset			# "iso-8859-1"

# Prints the encoding	puts f.content_encoding	# []
	puts f.last_modified	# Thu Dec 05 02:45:02 UTC 2002

# end the open from above
end