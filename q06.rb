'''
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
'''

def difference(number)
	sumofsquares = 0
	sum = 0
	for i in 0..number
		sumofsquares = sumofsquares + i * i
		sum = sum + i
	end
	return sum * sum - sumofsquares
end

print "Enter a number: "
number = gets.chomp.to_i
diff = difference(number)
puts "The difference between the sum of squares of the first #{number} natural numbers is #{diff}"