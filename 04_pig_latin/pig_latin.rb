def translate(word)

	letters = word.split("")
	vowels  = ["a", "e", "i", "u", "o"]

	for vowel in vowels
		if vowel == letters[0]
			letters.push("ay")
		end
	end

	return letters.join("")
end

