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

