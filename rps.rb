#A rock paper scissors game
#rock>scissors
#scissors>paper
#paper>rock

keepPlaying = true
wincount=0
lossCount=0
tieCount=0

while keepPlaying
puts 'Rock, Paper,or Scissors?'
userChoice = gets().chomp.downcase
while(userChoice != "rock" && userChoice != "paper" && userChoice != "scissors")
	puts "That is not a valid response. Please try again: "
	userChoice = gets().chomp.downcase
end
temp = rand(1..3)
case temp
when 1
	computerChoice = "rock"
when 2
	computerChoice = "paper"
when 3
	computerChoice = "scissors"
end
puts "You chose: #{userChoice}"
puts "The computer chose: #{computerChoice}"

if userChoice == computerChoice
	puts 'Tie Game!'
	tieCount += 1
elsif (userChoice == "rock" && computerChoice == "scissors") || (userChoice =="scissors" && computerChoice == "paper")|| (userChoice =="paper" && computerChoice == "rock")
	puts "~~#{userChoice.capitalize} beats #{computerChoice.capitalize}~~"
	puts 'You win!'
	wincount += 1
else
	puts "~~#{computerChoice.capitalize} beats #{userChoice.capitalize}~~"
	puts 'You lose.'
	lossCount += 1
end

puts "Wins: #{wincount} Losses: #{lossCount} Ties: #{tieCount} \n Keep Playing? [Y]es [N]o"
response = gets().chomp.downcase
if response == "n"
	keepPlaying = false
else 
	keepPlaying = true	
end
end
puts "Thanks for playing!\n\n\n"