'''
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
'''

def sum_divisors(num1, num2)
	upper_num = 999
	sum = 0
	until upper_num == 0
		if upper_num % num1 == 0 || upper_num % num2 == 0
			sum = sum + upper_num
		end
		upper_num -= 1
	end
	return sum
end

print "Enter two divisors: "
num_array = gets.chomp.split(' ')
num1 = num_array.at(0).to_i
num2 = num_array.at(1).to_i
sum = sum_divisors(num1, num2)
puts "Sum of divisors of #{num1} and #{num2} is #{sum}"