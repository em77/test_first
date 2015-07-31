class Book

	def title
		@title
	end

	def title=(value)
		@title = titleize(value)
	end

	def titleize(string)
		non_capitalized_words = ["a", "aboard", "about", "above", "absent", "across", "after", "against", "along", "alongside", "amid", "amidst", "among", "amongst", "an", "and", "around", "as", "aslant", "astride", "at", "athwart", "atop", "barring", "before", "behind", "below", "beneath", "beside", "besides", "between", "beyond", "but", "by", "despite", "down", "during", "except", "failing", "following", "for", "for", "from", "in", "inside", "into", "like", "mid", "minus", "near", "next", "nor", "notwithstanding", "of", "off", "on", "onto", "opposite", "or", "out", "outside", "over", "past", "per", "plus", "regarding", "round", "save", "since", "so", "than", "the", "through", "throughout", "till", "times", "to", "toward", "towards", "under", "underneath", "unlike", "until", "up", "upon", "via", "vs.", "with", "within", "without", "worth", "yet"]
		word_array = string.split(" ")
		word_array.each do |word|
			word.capitalize! if !non_capitalized_words.include?(word)
		end
		result = word_array.join(" ")
		result[0] = result[0].upcase
		result
	end
end