require 'van'
require 'bike_container'

describe Van do

	it_behaves_like "a BikeContainer" 

	let(:van) { Van.new }
	let(:bike) { Bike.new }

	it "should report if empty" do
			expect(lambda {van.empty?}).to raise_error(RuntimeError)
	end	

end