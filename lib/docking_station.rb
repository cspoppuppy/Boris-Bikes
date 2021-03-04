require_relative 'bike'

class DockingStation
    DEFAULT_CAPACITY = 20

    attr_reader :bikes

    def initialize
        @bikes = Array.new
    end

    def release_bike
        fail "No bike available" if empty?
        @bikes.pop
    end

    def dock_bike (bike)
        fail "Dock is full" if full?
        @bikes << bike
    end

    private

    def full?
        @bikes.count >= DEFAULT_CAPACITY
    end

    def empty?
        @bikes.empty?
    end
end