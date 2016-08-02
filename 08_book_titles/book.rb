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

