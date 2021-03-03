require 'docking_station'
require 'bike'

describe DockingStation do
    # ---------------------------------------------------
    # Day 1 (1-10)
    # ---------------------------------------------------
    # response to release bike
    # solution 1 
    # it "respond to method" do 
    #     is_expected.to respond_to(:release_bike)
    # end
    # solution 2
    it { is_expected.to respond_to(:release_bike)}

    # create new instance of docking station
    docking_station = DockingStation.new
    # return released bike as bikeinstance
    bikeInstance = docking_station.release_bike

    # Check if bikeInstance is an instance of Bike class
    it "realse_bike returns a bike" do
        expect(bikeInstance).to be_a Bike
    end
    # Check if bike is working
    it "check if bike working" do
        expect(bikeInstance.working?).to eq true
    end

    # ---------------------------------------------------
    # Day 2
    # ---------------------------------------------------
    # dock bike at docking station
    it { is_expected.to respond_to(:dock_bike).with(1).argument }
    # see a bike
    it { is_expected.to respond_to(:bike) }

    # dock_bike
    it "dock a bike" do
        bike = Bike.new
        docking_station.dock_bike(bike)
        expect(docking_station.bike).to eq bike
    end



end
