class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end

	def time_string
		sec = seconds
		if sec > 3600
			hours = sec
			until hours / 60 == 0
				hours /= 60
			end
			minutes = sec - (hours * 3600)
			sec = minutes % 60
			minutes /= 60
		elsif sec > 60
			hours = 0
			minutes = sec
			sec = minutes % 60
			minutes /= 60
		else
			hours = 0
			minutes = 0
		end

		hours = sprintf "%02d", hours
		minutes = sprintf "%02d", minutes
		sec = sprintf "%02d", sec
		hours + ":" + minutes + ":" + sec
	end
end