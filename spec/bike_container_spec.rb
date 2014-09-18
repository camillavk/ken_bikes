require 'bike_container'

class Holder
	include BikeContainer
end

describe BikeContainer do

	let (:holder) { Holder.new }
	let (:bike) { double :bike }
	let (:bike2) { double :bike2 }
	

	it "should be able to store bikes" do
		holder.dock(bike)
		holder.dock(bike2)
		expect(holder.bike_count).to eq(2)
	end

	it "should be able to empty bikes from bike_container" do
		van = double :van
		holder.dock(bike)
		holder.dock(bike2)
		holder.transfer(van)
		expect(holder.bike_count).to eq(0)
	end

	it "should report if empty" do
		expect(lambda {holder.empty?}).to raise_error(RuntimeError)
	end

	it "should report if full" do
		10.times { holder.dock(bike) }
		expect(lambda {holder.full?}).to raise_error(RuntimeError)
	end

end

