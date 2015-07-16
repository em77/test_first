def translate(string)
	words = string.split(" ")
	vowels = ["a", "e", "i", "o", "u", "y"]
	words.map! do |word|
		if word.start_with?(*vowels)
			word << "ay"
		else
			word = word_translator(word)
		end
	end
	words.join(" ")
end

def word_translator(word)
	new_word = word.dup.downcase
	regex = /[aeiouy]/
	index = new_word.index(regex)

	if !(/qu/).match(new_word).nil?
		index = new_word.index(regex)
	else
		index = new_word.index(regex) - 1
	end

	prefix = new_word[0..(index)].downcase
	new_word.sub!(prefix, "")
	new_word << prefix + "ay"
	return new_word.capitalize if word.capitalize == word
	new_word
end