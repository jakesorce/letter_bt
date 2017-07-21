require_relative 'check_input'
require 'pry'
require 'colorize'

class RepeatLetters
	def initialize
		puts "Please enter a Sentence or press q to quit:"

		input = gets.strip.to_s
		CheckInput.new(input)

		find_repeated input
	end

	def find_repeated(input)
		most_repeated = ['', 0]

		input.split(' ').each do |word|
			@repeated_count = 1

			word.each_char do |c|
				@repeated_count = word.count(c) > @repeated_count ? word.count(c) : @repeated_count
			end

			if @repeated_count === most_repeated[1]
				most_repeated.push(word, @repeated_count)
			elsif @repeated_count > most_repeated[1]
				most_repeated = [word, @repeated_count]
			end

		end

		puts most_repeated
		RepeatLetters.new
	end

end

RepeatLetters.new
