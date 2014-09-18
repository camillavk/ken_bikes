require 'garage'
require 'bike_container'
require 'bike'

describe Garage do

	let (:garage) { Garage.new }
	let (:van) { Van.new }
	let (:bike) { Bike.new }

	it_behaves_like "a BikeContainer"

	it "should be able to fix bikes" do
		5.times { garage.dock(bike.break!) }
		garage.fix_bikes
		expect(garage.available_bikes.count).to eq(5)
	end

end