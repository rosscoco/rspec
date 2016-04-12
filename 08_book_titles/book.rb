class Book
	
	attr_reader :title

	def title=(str)
		@title = str.split(" ").map.with_index do |word, index| 

			if %w{and in the of a an}.include?(word) && index > 0
				word
			else
				word.capitalize
			end
		end.join(" ")
	end
end