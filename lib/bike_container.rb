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
		@bikes.delete(bike)
	end
	
	def transfer(recipient)
		if recipient.instance_of?(Garage)
			broken_bikes.each do |bike|
				recipient.dock(release(bike))
			end
		elsif recipient.instance_of?(Station)
			available_bikes.each do |bike|
				recipient.dock(release(bike))
			end
		elsif recipient.instance_of?(Van)
			broken_bikes.each do |bike|	
				recipient.dock(release(bike))
			end
		elsif recipient.instance_of?(Person)
			available_bikes.each do |bike|
			recipient.dock(release(bike))
		end
		else 
			raise "This action is not allowed"
	end

	end

	def empty?
		raise "I am empty" if bike_count == 0
	end

	def full?
		raise "I am full" if bike_count == DEFAULT_CAPACITY
	end

	def broken_bikes
		@bikes.select do |bike|
			bike.broken?		
		end
	end

	def available_bikes
		@bikes.reject do |bike|
			bike.broken?
		end
	end



end

