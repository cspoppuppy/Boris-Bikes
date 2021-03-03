require_relative 'bike'

class DockingStation
    attr_reader :bikes

    def initialize
        @bikes = Array.new
    end

    def release_bike
        fail "No bike available" if @bikes.empty?
        @bikes
    end

    def dock_bike (bike)
        fail "Dock is full" if @bikes.count >= 20
        @bikes << bike
    end
end