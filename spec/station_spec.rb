require 'station'
require 'bike_container'

describe Station do

	it_behaves_like "a BikeContainer"

	let (:station) { Station.new }
	let (:van) { Van.new }
	let(:person) { Person.new }

	it "should be able to transfer broken bikes from station to van" do
		5.times do
			bike = Bike.new
			bike.break!
			station.dock(bike)
		end
		station.transfer(van)
		expect(van.bike_count).to eq(5)
		expect(station.bike_count).to eq(0)
	end

		it "should be able to transfer an available bike from person to docking station" do
		bike = Bike.new
		station.dock(bike)
		station.transfer(person)
		expect(person.bike_count).to eq(1)
		expect(station.bike_count).to eq(0)

	end
end
