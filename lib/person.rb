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

	def full?
		raise "I am full" if bike_count > capacity
	end

end