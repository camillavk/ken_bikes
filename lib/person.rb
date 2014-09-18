class Person

	include BikeContainer

	def initialize(capacity = 1)
		@capacity = capacity
		@bikes = []
		@broken_bikes = []
	end

	def fall_down(bike)
		bike.break!
	end

end