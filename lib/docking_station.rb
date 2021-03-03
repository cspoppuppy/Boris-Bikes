require_relative 'bike'

class DockingStation
    attr_reader :bike

    def release_bike
        fail "No bike available" unless @bike
        @bike
    end

    def dock_bike (bike)
        fail "Dock is full" if @bike
        @bike = bike
    end
end