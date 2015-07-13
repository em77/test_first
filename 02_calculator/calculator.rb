def add(first, second)
	first + second
end

def subtract(first, second)
	first - second
end

def sum(array)
	total = 0
	array.each do |num|
		total += num
	end
	total
end

def multiply(first, second)
	first * second
end

def power(base, exponent)
	base**exponent
end

def factorial(number)
	i = number
	if i < 0
		return "Must be positive number"
	elsif (number == 0) || (number == 1)
		return 1
	else
		while i > 1
			i -= 1
			number *= i
		end
	end
	number
end