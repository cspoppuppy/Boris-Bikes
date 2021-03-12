module BikeContainer
    DEFAULT_CAPACITY = 20

    attr_reader :capacity, :bikes

    def initialize(capacity: DEFAULT_CAPACITY)
        @capacity = capacity
        @bikes = []
    end

    def receive_one_bike(bike)
        fail "#{self.class.name} is full" if full?
        @bikes << bike
    end

    def release_one_bike
        fail "#{self.class.name} is empty" if empty?
        @bikes.pop
    end

    def full?
        @bikes.length >= capacity
    end

    def empty?
        @bikes.empty?
    end
end