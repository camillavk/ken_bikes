require 'bike_container'

class Holder
	include BikeContainer
end

shared_examples "a BikeContainer" do

describe BikeContainer do

	let (:holder) { Holder.new }
	let (:bike) { Bike.new }	

	it "should be able to store bikes" do
		2.times do
			bike = Bike.new
			holder.dock(bike)
		end
		expect(holder.bike_count).to eq(2)
	end

	it "should report if empty" do
		expect(lambda {holder.empty?}).to raise_error(RuntimeError)
	end


	it "should be able to group together the broken bikes" do
		5.times do
			bike = Bike.new
			holder.dock(bike)
		end
		5.times do
			bike = Bike.new
			bike.break!
			holder.dock(bike)
		end
		expect(holder.broken_bikes.length).to eq(5)
	end


end
end

