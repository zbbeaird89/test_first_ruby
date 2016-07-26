def translate(word)

	letters = word.split("")
	vowels  = ["a", "e", "i", "u", "o"]

	if vowels.include?(letters[0])
		letters.push("ay")
	else 
		letters.insert(letters.length, letters.delete_at(0))
		letters.push("ay")
	end

	return letters.join("")
end



