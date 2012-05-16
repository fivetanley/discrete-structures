# Spec for factorials
require 'src/factorial/factorial.rb'

describe "factorial" do
	# Factorials are calculated with non-negative integers:
	# http://en.wikipedia.org/wiki/Factorial
	it "should throw an exception when passed a non positive integer" do
		# lambdas are like function objects in Ruby:
		# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
		# this example was taken from the RSpec book for
		# raising errors ("throwing exceptions" for us Java people)
		lambda {factorial(-1)}.should raise_errors(ArgumentError)
	end
	it "should throw an exception when passed a non integer" do
		lambda {factorial(-1)}.should raise_errors(ArgumentError)
	end
end
