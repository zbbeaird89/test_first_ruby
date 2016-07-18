def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(array)
	total = 0
	for number in array do
		total += number
	end
	if array.empty?
		return 0
	end
	return total
end

def multiply(*num)
	total = 1
	for i in num 
		total *= i
	end
	return total
end

def power(number, exponent)
	total = 1
	for time in 1..exponent
		total *= number
	end
	return total
end

def factorial(number) 
	total = 1
	if number == 0
		return 1
	end
	for i in number.downto(1)
		total *= i
	end
	return total
end

