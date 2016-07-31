def translate(string)	
	vowels  = ["a", "e", "i", "o", "u"]
	words   = string.split(" ")
	new_words = string.split(" ")
	
	words.each_with_index do |word, i|
		letters     = word.split("")
		new_letters = new_words[i].split("")
		letters.each do |letter| 
			unless vowels.include?(letter)
				new_letters.rotate!
			else
				break
			end
		end	
		new_words[i] = new_letters.push("ay").join("")
	end


	return new_words.join(" ")
end


translate("eat pie")

