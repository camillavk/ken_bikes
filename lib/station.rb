class Station

	include BikeContainer

	def initialize(capacity = 30)
		@capacity = capacity
		@bikes = []
		@broken_bikes = []
	end

end