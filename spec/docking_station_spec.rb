require 'docking_station'
require 'bike'

describe DockingStation do

=begin 
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
    # Day 2 (11-14)
    # ---------------------------------------------------
    # dock bike at docking station
    it { is_expected.to respond_to(:dock_bike).with(1).argument }

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

    it "raise error when dock over 20 bikes" do
        20.times { subject.dock_bike(Bike.new) }
        expect { subject.dock_bike(Bike.new) }.to raise_error "Dock is full"
    end
=end

    # ---------------------------------------------------
    # Day 3 (15-21)
    # ---------------------------------------------------
=begin
    it "raise error when dock over 20 bikes" do
        DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
        expect { subject.dock_bike(Bike.new) }.to raise_error "Dock is full"
    end

    context "when new instance created" do
        it "allow argument" do
            expect(described_class).to respond_to(:new).with(1).argument
        end
    end
=end

    describe "#capacity" do
        it "default capacity should be set to 20" do
            expect(subject.capacity).to eq 20
        end
    end

    describe "#dock_bike" do
        context "when dock over capacity" do
            it "raise error" do
                ds = described_class.new(capacity: 50) # capacity = 50
                50.times { ds.dock_bike(double(:bike)) }
                expect{ds.dock_bike(double(:bike)) }.to raise_error "Dock is full"
            end
        end
    end

    describe "#release_bike" do
        context "when bike is broken" do
            it "raise error" do
                # method 1
                #bike = double(:bike)
                #allow(bike).to receive(:working).and_return(false)
                # method 2
                bike = double(:bike, working:false)
                #bike.report_broken
                subject.dock_bike(bike)
                expect{subject.release_bike}.to raise_error "Bike is broken"
            end
        end

        context "when bike is released" do
            it "should be working" do
                subject.dock_bike(Bike.new)
                bike = subject.release_bike
                #expect{subject.release_bike}.to raise_error "Bike is broken"
                expect(bike).to be_working
            end
        end
    end

end
