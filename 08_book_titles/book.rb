class Book

	def title=(name)
		small_words = %w[and by is in the of a an]
		words = name.split(" ")
		new_words = []
		
		words.each_with_index do |word, i| 
			if small_words.include?(word)
				if i == 0
					new_words << word.capitalize
				else
					new_words << word
				end
			else
				new_words << word.capitalize
			end
		end

		@name = new_words.join(" ")
	end

	def title 
		@name
	end

end

book = Book.new

book.title = "war and peace"

puts book.title




=begin
class Book

	def title=(name)
		words = name.split(" ")
		new_words = []
		
		words.each { |word| new_words << word.capitalize }

		@name = new_words.join(" ")
	end

	def title 
		@name
	end

end

book = Book.new

book.title = "stewart little"

puts book.title

=end