'''
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
'''

def ispalindrome(number)
	numberstring = number.to_s
	for i in 0..numberstring.length - 1
		if numberstring[i] != numberstring[numberstring.length-1-i]
			return false
		end
	end
	return true
end

def largestpalindrome(digits)
	max = "9"
	min = "1"
	while max.length < digits
		max = max + "9"
		min = min + "0"
	end
	maxint = max.to_i
	minint = min.to_i
	maxpalindrome = 0
	for i in minint..maxint
		for j in minint..maxint
			product = i * j
			if product > maxpalindrome and ispalindrome(product) == true
				maxpalindrome = product
			end
		end
	end
	return maxpalindrome
end

print "Enter the number of digits: "
digits = gets.chomp.to_i
maxpalindrome = largestpalindrome(digits)
puts "The largest palindrome which is a product of #{digits} numbers is #{maxpalindrome}"