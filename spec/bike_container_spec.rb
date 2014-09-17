require 'bike_container'

describe BikeContainer do

	let (:holder) { BikeContainer.new }

	it "should be able to store bikes" do
		bike = double :bike
		bike2 = double :bike2
		holder.dock(bike)
		holder.dock(bike2)
		expect(holder.bike_count).to eq(2)
	end

	it "should be able to transfer bikes" do
		bike = double :bike
		bike2 = double :bike2
		van = double :van
		holder.dock(bike)
		holder.dock(bike2)
		holder.transfer(van)
		expect(holder.bike_count).to eq(0)
	end

end

