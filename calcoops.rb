class Calculator
@first_number
@second_number
@operator

def first_number=(num)
	@first_number = num
end
def second_number=(num)
	@second_number = num
end
def operator=(opp)
	@operator=opp
end
def execute
	case @operator
	when '+'
		add
	when '-'
		subtract
	when '*'
		multiply
	when '/'
		divide
	end
end
def add
	@first_number + @second_number
end
def subtract
	@first_number - @second_number
end
def multiply
	@first_number * @second_number
end
def divide
	@first_number / @second_number
end
end


cal = Calculator.new

while true
puts 'Enter first number: '
cal.first_number=(gets.chomp.to_f)
puts 'Enter operator: '
cal.operator=(gets.chomp.to_s)
puts 'Enter second number: '
cal.second_number=(gets.chomp.to_f)
puts "Your answer is: #{cal.execute}\n"
end
