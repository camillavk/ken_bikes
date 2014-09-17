require 'bike'

describe Bike do

let (:bike) { Bike.new }

	it "should be able to break" do
		expect(bike.broken?).to eq(false)
		bike.break!
		expect(bike.broken?).to eq(true)
	end

	it "can be broken by a person" do
		person = double(:person, {fall_down: bike.break!})
		person.fall_down
		expect(bike.broken?).to eq(true)
	end

end
