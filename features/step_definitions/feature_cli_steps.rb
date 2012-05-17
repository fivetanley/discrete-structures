require 'aruba'
require 'src/factorial/factorial_cli.rb'

Given /^a factorial cli is running$/ do
	@factorial_cli = FactorialCLI.new
	@factorial_cli.start
end

When /^I send it a non-integer$/ do
	type(3.5)
end

When /^I send it a negative number$/ do
	type(-1)
end

Then /^I should see "(.*?)"$/ do |match|
	assert_partial_output(match, all_output)
end
