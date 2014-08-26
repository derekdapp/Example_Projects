while true
puts "Enter the string you want reversed: "
newWord = ""
myString = gets().chomp
wordArray = myString.chars.to_a
#puts wordArray
wordLength = wordArray.length
#puts wordLength.to_s
for i in (wordLength-1).downto(0)
   newWord += wordArray[i]
end
puts newWord
#check for palindrome
if myString == newWord
	puts 'This word is a palindrome'
else
	puts 'This word is not a palindrome'
end
end