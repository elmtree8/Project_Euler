'''
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
'''

def is_prime(i)
	for j in 3..i/2
		if i % j == 0
			return false
		end
	end
	return true
end

def sum_primes(number)
	primes = Array(2)
	sum = 0
	for i in (3..number).step(2)
		if is_prime(i)
			primes.push(i)
		end
	end
	for prime in primes
		sum = sum + prime
	end
	return sum
end

print "Enter a number: "
number = gets.chomp.to_i
puts sum_primes(number)