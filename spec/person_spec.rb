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

	it "should not be able to hold more than 1 bike" do
		2.times { person.dock(bike) }
		expect(lambda {person.full?}).to raise_error(RuntimeError)
	end

	
end