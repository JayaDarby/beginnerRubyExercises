puts "Type '1' to convert from Celsius to Fahrenheit"
puts "OR Type '2' to convert from Fahrenheit to Celsius"
input = gets

if input == '1'
	puts 'Enter Celsius Temperature in degrees'
	cel_input = gets
	fah = cel_input.to_f * 1.8 + 32
	puts "#{cel_input} degrees is equal to #{fah}"
elsif input == '2'
	puts 'Enter Fahrenheit Temperature in degrees'
	fah_input = gets
	cel = (fah_input.to_f - 32)/1.8
	puts "#{fah_input} degrees is equal to #{cel}"
end