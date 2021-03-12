require 'bike'

shared_examples_for BikeContainer do
    context "when initialized" do
        # default capacity
        it "has default capacity when no defined" do
            expect(subject.capacity).to eq described_class::DEFAULT_CAPACITY
        end

        # defined capacity
        it "has defined capacity when value passed" do
            random_capacity = Random.rand(100)
            bike_container = described_class.new(capacity: random_capacity)
            expect(bike_container.capacity).to eq random_capacity
        end
    end

    # receive one bike
    describe "#receive_one_bikes" do
        it "receives one bike" do
            bike = double(:bike)
            subject.receive_one_bike(bike)
            expect(subject.bikes).to eq [bike]
        end

        it "raise error when full" do
            bike = double(:bike)
            subject.capacity.times {subject.receive_one_bike(bike)}
            expect{subject.receive_one_bike(double:bike)}.to raise_error("#{described_class.name} is full")
        end
    end

    # release one bike
    describe "#release_one_bikes" do
        bike = Bike.new #double(:bike) can't use outside of it
        before(:each) {subject.receive_one_bike(bike)}

        it "release one bike" do
            #bike = double(:bike)
            #subject.receive_one_bike(bike)
            expect(subject.release_one_bike).to eq bike
        end

        it "empty after release bike" do
            subject.release_one_bike
            expect(subject).to be_empty
        end

        it "raise error when emtpy" do
            subject.release_one_bike
            expect{subject.release_one_bike}.to raise_error("#{described_class.name} is empty")
        end
    end
end