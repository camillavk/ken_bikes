require 'station'
require 'bike_container'

describe Station do

	it_behaves_like "a BikeContainer"

	let (:station) { Station.new }
	let (:van) { Van.new }

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

end
