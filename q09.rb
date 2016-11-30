'''
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
'''

def pythag_triplet(number)
	for a in 0..400
		for b in 0..400
			c = Math.sqrt(a**2 + b**2)
			if a + b + c == number
				return a, b, c
			end
		end
	end
	return 1
end

puts pythag_triplet(1000)