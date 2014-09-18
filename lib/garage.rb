class Garage

	include BikeContainer

	def fix_bikes
		@bikes.each { |bike| bike.fix! }
	end

	def transfer(recipient)
			available_bikes.each do |bike|
			recipient.dock(release(bike))
		end
	end


end
