require 'van'
require 'bike_container'

describe Van do

	it_behaves_like "a BikeContainer" 

	let(:van) { Van.new }
	let(:bike) { Bike.new }
	let(:garage) { Garage.new }
	let(:station) { Station.new }

	it "should report if empty" do
			expect(lambda {van.empty?}).to raise_error(RuntimeError)
	end	

	it "should be able to transfer bikes from van to garage" do
		5.times do
			bike = Bike.new
			bike.break!
			van.dock(bike)
		end
		van.transfer(garage)
		expect(garage.bike_count).to eq(5)
		expect(van.bike_count).to eq(0)
		
	end

	it "should be able to transfer from van to station" do
		5.times do
			bike = Bike.new
			van.dock(bike)
		end
		van.transfer(station)
		expect(station.bike_count).to eq(5)
		expect(van.bike_count).to eq(0)
	end

	it "should report if full" do
		16.times { van.dock(bike) }
		expect(lambda {van.full?}).to raise_error(RuntimeError)
	end
	
	it "should transfer bikes to station until full, then raise error" do
		30.times { van.dock(bike) }
		van.transfer(garage).to raise_error(RuntimeError)
		expect(van.bike_count).to eq(15)
		expect(station.bike_count).to eq(15)
	end
	

end
