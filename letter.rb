require_relative 'check_input'
require 'pry'
require 'colorize'

class RepeatLetters
	def initialize
		puts "Please enter a Sentence"
		puts "press q to quit:"

		input = gets.strip.to_s

		CheckInput.new(input)

		if !input.empty?
			most_repeated = ['', 0]

			input.split(' ').each do |word|
				@repeated = 1
				
				word.each_char.find do |c|
					@repeated = word.count(c) > @repeated ? word.count(c) : @repeated
				end

				if @repeated === most_repeated[1]
					most_repeated.push(word, @repeated)
				elsif @repeated > most_repeated[1]
					most_repeated = [word, @repeated]
				end
			end

			puts most_repeated

		else
			RepeatLetters.new
		end

	end
end

RepeatLetters.new
