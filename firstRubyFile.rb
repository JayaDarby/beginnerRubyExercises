# -----TEMPERATURE CONVERTER-------
puts "Type '1' to convert from Celsius to Fahrenheit OR Type '2' to convert from Fahrenheit to Celsius"
input = gets.strip

if input == "1"
	puts 'Enter Celsius Temperature in degrees'
	cel_input = gets.strip
	fah = cel_input.to_f * 1.8 + 32
	puts "#{cel_input} degrees Celsius is equal to #{fah} degrees Fahrenheit"
elsif input == "2"
	puts 'Enter Fahrenheit Temperature in degrees'
	fah_input = gets.strip
	cel = (fah_input.to_f - 32)/1.8
	puts "#{fah_input} degrees Fahrenheit is equal to #{cel} degrees Celsius"
end




# ------GUESSING GAME--------
rand_num = rand(1..100)
puts 'Please enter a number between 1 and 100: '
input = gets.strip.to_i
tries = 1

while input != rand_num
	if input < rand_num
		puts "The number is higher than #{input}"
		tries += 1
	elsif input > rand_num
		puts "The number is lower than #{input}"
		tries += 1
	end
puts 'Try again. Enter another number: '
input = gets.strip.to_i
end

puts "You got it in #{tries} tries"





# --------ASCII ART---------
puts "What character would you like your pyramid to be made out of?: "
input_char = gets.strip
puts input_char

puts "How many rows of #{input_char} would you like?: "
num_rows = gets.strip.to_i
puts num_rows

plus = 1
for current_iteration_number in 0...num_rows do
	puts "   " + " " * (num_rows-1) + "#{input_char}" * (current_iteration_number+plus)
	plus += 1
	num_rows -= 1
end




#-------MULTIPLICATION TABLE-------
puts 'A multiplication table:'
i = 1
space = "     "
for iteration_num in 0..9
	if iteration_num == 0
		print "  "
		for iteration_num2 in 1..9 do
		  print "#{space}#{iteration_num2}"
		end
		print "\n"
	else
		print "#{i}|"
		for iteration_num3 in 1..9 do	
		  lol = iteration_num3*i
		  hey = lol.to_s.length
		  if hey > 1
		    space = '    '
		  else
		    space = '     '	
		  end
		  print "#{space}#{iteration_num3*i}"
		
		end
		print "\n"
		i+=1
	end
end




#------- REVERSE A STRING --------
puts 'Enter a string: '
input = gets

def custom_reverse(start, limit, the_string)
    i_start = start
    i_end = limit - 1

    while (i_start <= i_end)
      tmp = the_string[i_start]
      the_string[i_start] = the_string[i_end]
      the_string[i_end] = tmp
      i_start += 1
      i_end -= 1
    end
    return the_string
end

puts custom_reverse(0, input.length, input)
