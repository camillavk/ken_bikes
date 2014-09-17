require 'bike'

describe Bike do

let (:bike) { Bike.new }

	it "should be able to break" do
		expect(bike.broken?).to eq(false)
		bike.break!
		expect(bike.broken?).to eq(true)
	end

end
