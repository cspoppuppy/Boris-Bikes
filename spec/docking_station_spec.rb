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
    #it { is_expected.to respond_to(:release_bike)}

    # create new instance of docking station
    #docking_station = DockingStation.new
    # return released bike as bikeinstance
    #bikeInstance = docking_station.release_bike

    # Check if bikeInstance is an instance of Bike class
    #it "realse_bike returns a bike" do
        #expect(bikeInstance).to be_a Bike
    #end
    # Check if bike is working
    #it "check if bike working" do
        #expect(bikeInstance.working?).to eq true
    #end

    # ---------------------------------------------------
    # Day 2
    # ---------------------------------------------------
    # dock bike at docking station
    it { is_expected.to respond_to(:dock_bike).with(1).argument }

=begin 
    # see a bike
    it { is_expected.to respond_to(:bike) }
   
    # dock_bike
    it "dock a bike" do
        bike = Bike.new
        subject.dock_bike(bike)
        expect(subject.bike).to eq bike
    end

    # not release bike if no bike available
    it "release a bike" do
        bike = Bike.new
        subject.dock_bike(bike)
        expect(subject.release_bike).to eq bike
    end

    it "raise error when no bike to release" do
        expect { subject.release_bike }.to raise_error "No bike available"
    end

    # not dock bike if full
    it "raise an error when dock bike and full" do
        subject.dock_bike(Bike.new)
        expect { subject.dock_bike(Bike.new) }.to raise_error "Dock is full"
    end
=end

    it "raise error when dock over 20 bikes" do
        DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
        expect { subject.dock_bike(Bike.new) }.to raise_error "Dock is full"
    end

end
