def getstr()

require 'pry'
require 'colorize'

continue = true

	while continue

		puts "Input any word or phrase to check if palindrome, or type quit:"
		str = gets.strip.downcase
		if str == 'quit'
			continue = false
		elsif (str == '')
			puts "Not a valid response. Enter again.".colorize(:yellow)
		else
			str = str.split('')
			palindrome(str)
		end

	end
end

def palindrome(arr)
	if (arr.length == 0 || arr.length == 1)
		puts "Your word or phrase is a palindrome!".colorize(:green)
	elsif (arr.first == arr.last)
		arr.pop
		arr.shift
		palindrome(arr)
	else
		puts "Your word or phrase is NOT a palindrome.".colorize(:red)
		getstr
	end
end

getstr