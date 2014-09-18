class Van

	include BikeContainer

	def initialize(capacity = 15)
		@capacity = capacity
		@bikes = []
		@broken_bikes = []
	end

end