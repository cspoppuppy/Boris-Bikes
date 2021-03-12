require 'garage'
require 'support/shared_examples_for_bike_container'

describe Garage do
    it_behaves_like BikeContainer

    it "broken bike" do
        bike = double(:bike, fix: nil, working?: true)
        subject.receive_one_bike(bike)
        subject.fix_bike(bike)
        expect(bike).to be_working
    end
end