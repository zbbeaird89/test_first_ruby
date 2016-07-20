def echo(phrase)
	return "#{phrase}"
end

def shout(phrase)
	return "#{phrase}".upcase
end

def repeat(phrase, number=2)
	output = []
	if number <= 2
		output.push("#{phrase} #{phrase}")
	elsif number > 2
		number.times do 
			output.push("#{phrase}")
		end
	end
	return output.join(" ")
end

def start_of_word(word, number)
	output = ""
	number.times do |i = 0|
		output += "#{word[i]}"
	end
	return output
end

def first_word(phrase)
	word = []
	phrase.split("").each do |i|
		if i == " "
			break
		else
			word.push("#{i}")
		end
	end
	return word.join("")
end

def titleize(phrase)
	words          = phrase.split("")
	word           = []
	output         = []
	i              = 0
	j              = 0
	found_new_word = 0 

	#Find each word in "phrase"/Store each word in its own array/Store word arrays in "output" array
	while i < words.length do
		if i == 0
			word.push(words[i].upcase)
		elsif words[i] == " "
			#Pushes the word that was found prior to the empty space and pushes the empty space.
			output.push(word, words[i])
			word = []
			found_new_word = i + 1
		elsif found_new_word == i
			word.push(words[i].upcase) 
		elsif i == words.length - 1
			word.push(words[i])
			output.push(word)
		else 
			word.push(words[i]) 
		end
		i += 1
	end

	#Find little words/Make sure first letter is lower case
	while j < output.length do 
		if output[j] != " " && (output[j].join("") == "And" || output[j].join("") == "The" || output[j].join("") == "To" || output[j].join("") == "Is" || output[j].join("") == "Over")
			if j == 0
				output[j][0] = output[j][0].upcase
			else
				output[j][0] = output[j][0].downcase
			end
		end
		j += 1
	end
	return output.flatten.join("")
end

titleize("the grass is long")


#output = [[w, a, r],  , [a , n, d],  , [p, e, a, c, e]]