'''
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
'''

def isprime(number)
	for i in 2..Math.sqrt(number)
		if number % i == 0
			return false
		end
	end
	return true
end

def getprime(number)
	prevprime = 2
	iter = 1
	num = 3
	while num > prevprime
		if isprime(num)
			prevprime = num
			iter += 1
		end
		if iter == number
			return prevprime
		end
		num += 2
	end
end

print "Enter a number: "
number = gets.chomp.to_i
prime = getprime(number)
puts "The #{number} prime number is #{prime}"