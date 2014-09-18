require 'bike'

describe Bike do

let (:bike) { Bike.new }
let(:person) { Person.new }

	it "should be able to break" do
		expect(bike.broken?).to eq(false)
		bike.break!
		expect(bike.broken?).to eq(true)
	end

	it "can be broken by a person" do
		person.dock(bike)
		person.fall_down(bike)
		expect(bike.broken?).to eq(true)
	end

end
