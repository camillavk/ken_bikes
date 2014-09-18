module BikeContainer

	DEFAULT_CAPACITY = 10



	def initialize
		@bikes = []
		@broken_bikes = []
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

	def release(bike = nil)
		if bike 
			@bikes.delete(bike)
		else
			@bikes.shift
		end
	end
	
	def transfer(recipient)
		count = bike_count
		count.times { @bikes.pop }	
	end

	def empty?
		raise "I am empty" if bike_count == 0
	end

	def full?
		raise "I am full" if bike_count == DEFAULT_CAPACITY
	end

	def collect_broken_bikes
		@bikes.select do |bike|
			bike.broken?		
		end
	end

end

