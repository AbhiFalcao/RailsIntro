begin 
	puts "Hello World"
	1+"a"
	puts "Last line of golden path"
rescue NameError
	puts "There was Name Exception"
rescue TypeError
	puts "There was Type Exception"
	raise StandardError.new("There was some other problem")	
rescue Exception
	puts "There was General Exception"	
else 
	puts "There was no problem"
ensure
	puts "Always do this"

end				