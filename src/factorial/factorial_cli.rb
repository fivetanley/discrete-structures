#!/usr/bin/env ruby
# Defines a command line interface for calculating factorials
require File.expand_path('../factorial.rb', __FILE__)
class FactorialCLI

	def start
		$stdout.puts "Please enter a number to compute a factorial."
		input = $stdin.gets
		# catch any errors
		begin
			ftorial = factorial(input.to_i)
			$stdout.puts factorial
		rescue ArgumentError
			$stdout.puts "Please enter a positive integer."
		end
	end
end

@factorial_cli = FactorialCLI.new
@factorial_cli.start
