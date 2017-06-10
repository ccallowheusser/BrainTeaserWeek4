# Simplified version, fewer lines of code
def getstr()
	require 'colorize'
	puts "Input any word or phrase to check if palindrome, or type quit:".colorize(:yellow)
	str = gets.strip.downcase
	str == 'quit' ? (exit 0) : palindrome(str)
end

def palindrome(str)
	if (str.empty? || str.length == 1)
		puts "Your word or phrase is a palindrome!".colorize(:green)
		getstr
	elsif str[0] == str[str.length - 1]; palindrome(str[1..(str.length - 2)]);
	else
		puts "Your word or phrase is NOT a palindrome.".colorize(:red)
		getstr
	end
end

getstr

# My original solution
# def getstr()

# require 'pry'
# require 'colorize'

# continue = true
# 	while continue
# 		puts "Input any word or phrase to check if palindrome, or type quit:"
# 		str = gets.strip.downcase
# 		if str == 'quit'
# 			continue = false
# 		elsif (str == '')
# 			puts "Not a valid response. Enter again.".colorize(:yellow)
# 		else
# 			str = str.split('')
# 			palindrome(str)
# 		end
# 	end
# end

# def palindrome(arr)
# 	if (arr.length == 0 || arr.length == 1)
# 		puts "Your word or phrase is a palindrome!".colorize(:green)
# 	elsif (arr.first == arr.last)
# 		arr.pop
# 		arr.shift
# 		palindrome(arr)
# 	else
# 		puts "Your word or phrase is NOT a palindrome.".colorize(:red)
# 		getstr
# 	end
# end

# getstr

# Jake's solution

# def reverse_string(string)
#   reversed_string = ''
#   (string.length - 1).downto(0).each { |number|  reversed_string << string[number] }
#   reversed_string
# end

# while true
#   puts "Input what you want checked for a palindrome (type quit to exit):"
#   user_input = gets.strip.downcase.gsub(' ', '')
#   user_input == 'quit' ? (exit 0) : (puts user_input == reverse_string(user_input) ? "That IS a palindrome" : "That is NOT a palindrome")
# end