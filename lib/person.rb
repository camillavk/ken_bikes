class Person

	include BikeContainer

	# def initialize(bike = nil)
	# 	@bike = bike
	# end

	def rent(bike)
		@bike = bike
	end

	# def rent_from(station)
	# 	rent(station.release(@bike))
	# end



	def have_bike?
		!@bike.nil?
	end

	def return(bike)
		@bike = nil
	end

	def fall_down
		@bike.break!
	end

end