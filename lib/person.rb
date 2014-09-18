class Person

	include BikeContainer

	def initialize(capacity = 1)
		# self.capacity = options.fetch(:capacity, capacity)
		@capacity = capacity
		@bikes = []
		@broken_bikes = []
	end

	def capacity
		@capacity
	end

	# def capacity=(value)
	# 	@capactiy = value
	# end

	def fall_down(bike)
		bike.break!
	end

end