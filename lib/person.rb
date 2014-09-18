class Person

	include BikeContainer

	def fall_down(bike)
		bike.break!
	end

end