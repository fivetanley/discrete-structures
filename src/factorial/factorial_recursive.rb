# Recursive implementation of factorial
def factorial(positive_integer)
	if positive_integer < 0
		raise ArgumentError, "Cannot compute factorial of negative numbers."
	elsif !positive_integer.integer?
		raise ArgumentError, "Cannot compute factorial of non integers."
	elsif positive_integer == 0
		return 1
	else
		return positive_integer * factorial(positive_integer - 1)
	end
end
