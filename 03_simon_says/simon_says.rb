def echo(parameter)
	parameter
end

def shout(parameter)
	parameter.upcase
end

def repeat(parameter, number_of_times = 2)
	result = parameter.dup
	while number_of_times > 1
		result << " #{parameter}"
		number_of_times -= 1
	end
	result
end

def start_of_word(word, number_of_letters)
	result = ""
	while number_of_letters >= 1
		result.prepend(word[number_of_letters - 1])
		number_of_letters -= 1
	end
	result
end

def first_word(string)
	array = string.split(" ")
	array [0]
end

def titleize(string)
	non_capitalized_words = ["a", "aboard", "about", "above", "absent", "across", "after", "against", "along", "alongside", "amid", "amidst", "among", "amongst", "an", "and", "around", "as", "aslant", "astride", "at", "athwart", "atop", "barring", "before", "behind", "below", "beneath", "beside", "besides", "between", "beyond", "but", "by", "despite", "down", "during", "except", "failing", "following", "for", "for", "from", "in", "inside", "into", "like", "mid", "minus", "near", "next", "nor", "notwithstanding", "of", "off", "on", "onto", "opposite", "or", "out", "outside", "over", "past", "per", "plus", "regarding", "round", "save", "since", "so", "than", "the", "through", "throughout", "till", "times", "to", "toward", "towards", "under", "underneath", "unlike", "until", "up", "upon", "via", "vs.", "when", "with", "within", "without", "worth", "yet"]
	word_array = string.split(" ")
	word_array.each do |word|
		word.capitalize! if !non_capitalized_words.include?(word)
	end
	result = word_array.join(" ")
	result[0] = result[0].upcase
	result
end