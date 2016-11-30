'''
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
'''

def getprimefactors(number)
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
	if number != 1
		factors.push(number)
	end
	return factors
end

def smallestmultiple(number)
	reducedpfactors = Array.new
	for i in 2..number
		factors = getprimefactors(i)
		j = 0
		k = 0
		while j < factors.length
			if k < reducedpfactors.length
				if factors.at(j) == reducedpfactors.at(k)
					j += 1
					k += 1
				elsif factors.at(j) > reducedpfactors.at(k)
					k += 1
				else
					reducedpfactors.insert(k, factors.at(j))
					j += 1
					k += 1
				end
			else
				reducedpfactors.push(factors.at(j))
			end
		end
	end
	product = 1
	for factor in reducedpfactors
		product = product * factor
	end
	return product
end

print "Enter a number: "
number = gets.chomp.to_i
multiple = smallestmultiple(number)
puts "The smallest number which is a multiple of the numbers 1 through #{number} is #{multiple}"