class DockingStation
    include BikeContainer

    def release_bike
        fail "No bike available" if empty?
        bikes.delete working_bikes.pop
    end

    def dock_bike (bike)
        receive_one_bike(bike)
    end

    # def release_broken_bikes
    #     broken_bikes = @bikes.select { |bike| !bike.working }
    #     @bikes.select! { |bike| bike.working }
    #     broken_bikes
    # end

    # def receive_fixed_bikes(bikes)
    #     @bikes += bikes
    # end

    private

    def working_bikes
        bikes.select { |bike| bike.working? }
    end
end