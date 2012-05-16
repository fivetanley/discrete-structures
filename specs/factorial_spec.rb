# Spec for factorials
require 'src/factorial/factorial.rb'

describe "factorial" do
	# Factorials are calculated with non-negative integers:
	# http://en.wikipedia.org/wiki/Factorial
	it "should throw an exception when passed a non positive integer" do
		# lambdas are like function objects in Ruby:
		# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
		# this example for writing/running/testing result of a lambda 
		# was taken from the RSpec book raising errors (throwing exceptions)
		# - The RSpec Book
		lambda {factorial(-1)}.should raise_error(ArgumentError)
	end

	it "should throw an exception when passed a non integer" do
		lambda {factorial(1.5)}.should raise_error(ArgumentError)
	end

	it "should return 1 when passed 0" do
		lambda{factorial(0)}.should == 1
	end
end
