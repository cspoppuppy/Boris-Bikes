require 'docking_station'
require 'bike'

describe DockingStation do
    # it "respond to method" do 
    #     is_expected.to respond_to(:release_bike)
    # end

    it { is_expected.to respond_to(:release_bike)}

    docking_station = DockingStation.new
    bikeInstance = docking_station.release_bike

    it "realse_bike returns a bike" do
        expect(bikeInstance).to be_a Bike
    end

    it "check if bike working" do
        expect(bikeInstance.working?).to eq true
    end
end
