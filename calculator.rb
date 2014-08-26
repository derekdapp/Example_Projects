#simple calculator, two numbers, + - / * ^ sqrt
puts 'Welcome to My S Calculator!'

while true
answer = nil
puts "Enter problem with 2 numbers, using + - * / ^, to sqrt enter only one number, separated by spaces \nLeave blank to quit: "
myString = gets().chomp

parts = Array.new
myString.split(' ').each {|i| parts.push i}
if parts[0] == nil
		puts "Quiting!\n\n\n"
		exit
	elsif parts[1] == nil
		answer = parts[0].to_f ** (1.0/2.0)
	end
case parts[1]
	when "+"
		answer = parts[0].to_f + parts[2].to_f 
	when "-"
		answer = parts[0].to_f - parts[2].to_f 
	when "*"
		answer = parts[0].to_f * parts[2].to_f 
	when "/"
		answer = parts[0].to_f / parts[2].to_f 
	when "^"
		answer = parts[0].to_f**parts[2].to_f
	else 
		if parts[1] != nil
		puts 'malformed equation :('
	end
end
puts answer
end

#myString.split('').each do |i| 
#if i != '+' && i != '-' && i != '*' && i != '^' && i != '/' 
#unless i == ' '
#temp += i 
#end
#else 
#parts.push temp
#if i!= ' '
#parts.push i 
#end
#temp = ""
#end 
#end