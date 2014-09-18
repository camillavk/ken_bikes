require 'Person'

describe Person do

	let (:person) { Person.new }
	let (:bike) { Bike.new }
	let (:station) { Station.new }

	it_behaves_like "a BikeContainer"

	it "should be able to change the default capacity on initialising" do
		expect(person.capacity).to eq(1)
	end

	it "should be able to fall down and tell a bike to break" do
		person.dock(bike)
		expect(bike).to receive(:break!)
		person.fall_down(bike)
	end 


	
end