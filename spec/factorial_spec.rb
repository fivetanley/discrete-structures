# Spec for factorials, implemented recursively
require 'src/factorial/factorial_recursive.rb'

describe "factorial" do
	# Factorials are calculated with non-negative integers:
	# http://en.wikipedia.org/wiki/Factorial
	it "should throw an exception when passed a non positive integer" do
		# lambdas are like function objects in Ruby:
		# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
		# this example for writing/running/testing result of a lambda 
		# was taken from the RSpec book raising errors (throwing exceptions)
		# - The RSpec Book, page 167
		lambda {factorial(-1)}.should raise_error(ArgumentError)
	end

	it "should throw an exception when passed a non integer" do
		lambda {factorial(1.5)}.should raise_error(ArgumentError)
	end

	it "should throw an exception when passed a string" do
		lambda {factorial("foo")}.should raise_error(ArgumentError)
	end

	it "should return 1 when passed 0" do
		result = factorial(0)
		result.should == 1
	end

	it "should return the factorial of numbers less than or equal to
		the passed integer" do
		factorial_of_one = factorial(1)
		factorial_of_two = factorial(2)T
		factorial_of_three = factorial(3)
		factorial_of_four = factorial(4)
		factorial_of_five = factorial(5)
		# test values 
		factorial_of_one.should == 1
		factorial_of_two.should == 2 * 1
		factorial_of_three.should == 3 * 2 * 1
		factorial_of_four.should == 4 * 3 * 2 * 1
		factorial_of_five.should == 5 * 4 * 3 * 2 * 1
	end
end
