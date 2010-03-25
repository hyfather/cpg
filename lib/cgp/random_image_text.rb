require_relative "../cgp/random.rb"
module Cgp
	class RandomImageText < Random
		def initialize(total_chars)
			@text = []
			alphabets = []
			('a'..'z').each {|char| alphabets << char}
			('A'..'Z').each {|char| alphabets << char}

			1.upto(total_chars) do
				number = super(51) # 0 - 51 is the range of alphabets when including both lower and upper case
				@text << alphabets[number]
			end
		end
		
		def to_s
			"#{@text.join}"
		end
	
	end
end
			
