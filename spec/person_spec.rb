require 'Person'

describe Person do

	let (:person) { Person.new }
	let (:bike) { double :bike }

	it "should be able to rent a bike" do
		person.rent(bike)
		expect(person.have_bike?).to eq(true)
	end
end