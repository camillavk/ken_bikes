require 'bike_container'

class Holder
	include BikeContainer
end

shared_examples "a BikeContainer" do

describe BikeContainer do

	let (:holder) { Holder.new }
	let (:bike) { double :bike, :broken? => false }
	let (:bike2) { double :bike2, broken?: false }
	let(:bikebroken) { double :bikebroken, broken?: true }
	

	it "should be able to store bikes" do
		holder.dock(bike)
		holder.dock(bike2)
		expect(holder.bike_count).to eq(2)
	end

	it "should report if empty" do
		expect(lambda {holder.empty?}).to raise_error(RuntimeError)
	end


	it "should be able to group together the broken bikes" do
		5.times { holder.dock(bike) }
		5.times { holder.dock(bikebroken) }
		holder.broken_bikes
		expect(holder.broken_bikes.length).to eq(5)
	end


end
end

