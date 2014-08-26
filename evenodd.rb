puts 'Welcome to pick a number'
puts 'enter your number'

number = gets()

puts "your number is #{number}"

even_test = number.to_i % 2
if even_test == 0
	puts 'your number is even'
else
	puts 'your number is odd'
end

even_test = number.to_i % 3
if even_test == 0
	puts 'your number is divisible by 3'
else
	puts 'your number is not divisible by 3'
end

