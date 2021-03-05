#require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20
    attr_reader :capacity, :bikes

    def initialize(capacity: DEFAULT_CAPACITY)
        @bikes = Array.new
        @capacity = capacity
    end

    def release_bike
        fail "No bike available" if empty?
        fail "Bike is broken" if !@bikes.last.working
        @bikes.pop
    end

    def dock_bike (bike)
        fail "Dock is full" if full?
        @bikes << bike
    end

    def release_broken_bikes
        broken_bikes = @bikes.select { |bike| !bike.working }
        @bikes.select! { |bike| bike.working }
        broken_bikes
    end

    def receive_fixed_bikes(bikes)
        @bikes += bikes
    end

    private

    def full?
        @bikes.count >= capacity
    end

    def empty?
        @bikes.empty?
    end
end