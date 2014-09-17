class BikeContainer

	def initialize
		@bikes = []
	end

	def has_bikes?
		!@bikes.nil?
	end

	def dock(bike)
		@bikes << bike
	end

	def bike_count
		@bikes.length
	end

	def transfer(recipient)
		count = bike_count
		count.times { @bikes.pop }	
	end
end
