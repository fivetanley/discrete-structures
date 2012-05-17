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
# raises : ArgumentError
#   if non positive integer and isn't 0
#   if non integer and isn't 0
# returns the factorial of a positive_integer.
def factorial(positive_integer)
	if positive_integer < 0
		raise ArgumentError, 'Cannot compute factorial of negative numbers.'
	#check for integers: 
	#http://www.ruby-doc.org/core-1.9.3/Numeric.html
	elsif !positive_integer.integer?
		raise ArgumentError, 'Cannot compute factorial of non-integers.'
	elsif positive_integer == 0
		return 1
	end
	result = 1
	# Uses a block, which is like passing an anonymous function in JavaScript
	positive_integer.downto(1) {|integer|
		result = result * integer
	}
	return result
end
