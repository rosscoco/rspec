def is_vowel_sound?( letters, compound = false )


	begin
		letters.split("").all? { | letter | %w(a e i o u).include?( letter.downcase ) }
	rescue
		""
	end
end


def translate( sentence )
	words = sentence.split(" ")

	words.map! { | word | translate_word( word ) }

	words.join(" ")
end

def eat_consonants( word )
	to_test = ('a'..'z').to_a.keep_if { | letter | !is_vowel_sound?(letter) }
	to_test.shift('qu')

	word.length.times.do | i |
		if (  )
	end
end	

def vowel_index( word )

	match = word.match(/^[^aeiou]*qu/) 

	if match
		return match[0].length
	end

	i = 0
	
	word.length.times do | index |
		if !is_vowel_sound?( word[index ]) 
			i = i + 1 
		else
			return i
		end
	end
end

def translate_word ( word )

	index = vowel_index( word )

	word = word[index..-1] + word[0...index] +"ay"

	return word
end


puts translate("quiet")
puts translate("ebay")
