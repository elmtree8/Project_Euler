'''
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
'''

def get_prime_factors(number)
	factors = Array.new
	while number % 2 == 0
		factors.push(2)
		number = number / 2
	end
	for i in 3..Math.sqrt(number)
		while number % i == 0
			factors.push(i)
			number = number / i
		end
	end
	factors.push(number)
	return factors.max
end

print "Enter a number: "
number = gets.chomp.to_i
biggest_prime_factor = get_prime_factors(number)
puts "The largest prime factor of #{number} is #{biggest_prime_factor}"