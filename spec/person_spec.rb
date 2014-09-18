require 'Person'

describe Person do

	let (:person) { Person.new }
	let (:bike) { double :bike }
	let (:docking_station) { double :docking_station }

	it "should be able to rent a bike" do
		person.rent(bike)
		expect(person.have_bike?).to eq(true)
	end

	it "should be able to return a bike" do
		person.rent(bike)
		expect(person.have_bike?).to eq(true)
		person.return(bike)
		expect(person.have_bike?).to eq(false)
	end

	it "shouold be able to fall down and tell a bike to break" do
		person.rent(bike)
		expect(bike).to receive(:break!)
		person.fall_down
	end 

	# it "should be able to rent a bike from  docking station" do
	# 	person.rent(bike)
	# 	expect(docking_station).to receive(:release)
	# end
	
end