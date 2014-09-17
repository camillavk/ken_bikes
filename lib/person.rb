class Person

	def initialize(bike = nil)
		@bike = bike
	end

	def rent(bike)
		@bike = bike
	end

	def have_bike?
		!@bike.nil?
	end

end