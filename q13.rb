'''
Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
**Numbers are saved in bignumbers.txt
'''

def shortenedsum(file)
	sum = 0
	for line in file
		number = line[0,11].to_i
		sum = sum + number
	end
	sumstr = sum.to_s
	return sumstr[0,10]
end

def simplesum(file)
	sum = 0
	for line in file
		number = line.to_i
		sum = sum + number
	end
	sumstr = sum.to_s
	return sumstr[0,10]
end

print "Enter a file name containing the grid: "
filename = gets.chomp
file = File.open(filename, "r")
result = shortenedsum(file)
puts "#{result}"
file.close
file = File.open(filename, "r")
result = simplesum(file)
puts "#{result}"
file.close