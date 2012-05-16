# Factorial

# define a factorial method:

# ruby conventions state that local variables, method names, & parameters begin
# with a lowercase letter or underscore. Multiword names are separated with an
# underscore (not camelCase like Java)
#
# - Programming Ruby, pages 39-40

# factorial
# parameter : positive_integer
#   A positive integer.
# raises : NegativeNumberError
#   if number passed to params is not a positive integer
# returns the factorial of a positive_integer.
def factorial(positive_integer)
	if positive_integer < 0
		raise ArgumentError, 'Cannot compute factorial of negative numbers.'
	end
end
