def echo(word)
	word
end

def shout(*words)

	out = words.inject([]) { |arr,word| arr << word.upcase }
	out.join(" ")
end

def repeat( word, amt = 2 )
	repeated = ''
	amt.times { repeated += word + " "   }
	repeated.strip!
end

def start_of_word(word, num_chars)
	word[0...num_chars]
end

def first_word(sentence)
	sentence.split(" ")[0]
end

def titleize( sentence )
	allnoncapitals=%w(the over and or)
	noncapitals = %w(over and or)
	testcapitals = noncapitals

	sentence.split(" ").map do |word|
		if  !testcapitals.include?(word) 	#%w is shorthand for creating an array of strings
			word.capitalize!
		end

		testcapitals = allnoncapitals
		word
		
	end.join(" ")
end




