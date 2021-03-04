require_relative 'bike'

class DockingStation
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
        @bikes.count>=20
    end

    def empty?
        @bikes.empty?
    end
end