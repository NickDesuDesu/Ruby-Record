#
# Vehicle object, Used as super class for car and motorcycle objects.
#
class Vehicle
    # @return [String] Plate number of the vehcile
    attr_accessor :plate_number
    # @return [ParkingSpot] Parking spot where the vehicle is parked.
    attr_accessor :parking_spot
    
    #
    # Constructor of the vehicle object.
    #
    # @param [String] plate_number Plate number of the vehicle.
    #
    def initialize(plate_number)
        @plate_number = plate_number
    end

    #
    # Engine sound of the vehicle object.
    #
    # @return [String] Sound representation of the sound of the vehicle.
    #
    def engine_sound
        puts "Vroom Vroom..."    
    end
end
