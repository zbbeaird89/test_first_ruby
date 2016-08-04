class Timer

	attr_accessor :seconds

	def initialize(seconds=0)
		@seconds = seconds
	end

	def time_string
		@hours = 0
		@minutes = 0
		@s_counter = 0

		for i in 1..@seconds
			break if @seconds == 0
			@s_counter += 1
			if @s_counter == 60
				@minutes += 1
				@s_counter = 0
				if @minutes == 60
					@hours += 1
					@minutes = 0
				end
			end
		end
		

		@string = "%02d:%02d:%02d" % [@hours, @minutes, @s_counter]

		return @string
	end

end

timer = Timer.new(0)






#"%03d" % 5
#"%s/%s.%04d.txt" % ["dirname", "filename", 23]