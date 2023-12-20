require "csv"
require_relative "./../objects/floor"
require_relative "./../objects/parking_spot"
require_relative "./../objects/car"
require_relative "./../objects/motorcycle"

#
# Module for converting objects from a csv file.
#
module CSVReader

    #
    # Converts a csv file into a floor object.
    #
    # @return [Floor] The floor object.
    #
    def convert_parking
        floors = Array.new
        vehicles = Array.new
        file = CSV.read("./data/parking_data.csv")
        for i in 0..file.length()-1 do
            added = false
            if i == 0
                floors << Floor.new(file[i][1])
            end
            for floor in floors do
                if floor.floor_number == file[i][1]
                    parking_spot = ParkingSpot.new(file[i][4], file[i][3], file[i][2])
                    vehicles << convert_vehicle(parking_spot, file[i][5])

                    floor.parking_spots << parking_spot
                    
                    added = true
                    break
                end
            end

            if added == false
                floor = Floor.new(file[i][1])
                parking_spot = ParkingSpot.new(file[i][4], file[i][3], file[i][2])
                
                vehicles << convert_vehicle(parking_spot, file[i][5])

                floor.parking_spots << parking_spot
                floors << floor
            end
        end

        return floors, vehicles
    end

    #
    # Converts a vehicle csv a to a vehicle object.
    #
    # @param [ParkingSpot] p_spot Parking spot of the vehicle
    # @param [Integer] vehicle_index Index of the vehicle
    #
    # @return [Vehicle] Vehicle object
    #
    def convert_vehicle(p_spot, vehicle_index)
        file = CSV.read("./data/vehicle_data.csv")

        if file[vehicle_index.to_i][2] == "Motorcycle"
            vehicle = Motorcycle.new(p_spot)
            vehicle.parking_spot = file[vehicle_index.to_i][1]
            p_spot.vehicle = vehicle

            return vehicle
        elsif file[vehicle_index.to_i][2] == "Car"
            vehicle = Car.new(p_spot)
            vehicle.parking_spot = file[vehicle_index.to_i][1]
            p_spot.vehicle = vehicle
            
            return vehicle
        end
    end
    private :convert_vehicle
end