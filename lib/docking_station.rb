require_relative 'bike'

class DockingStation
    #DEFAULT_CAPACITY = 20
    attr_reader :capacity

    attr_reader :bikes

    def initialize(capacity = 20)
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

    private

    def full?
        @bikes.count >= capacity
    end

    def empty?
        @bikes.empty?
    end
end