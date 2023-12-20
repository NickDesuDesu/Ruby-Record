require_relative "./../objects/Vehicle.rb"

#
# Car. Object that inherits from vehicle.
#
class Car < Vehicle

    #
    # Constructor of the object
    #
    # @param [Integer] plate_number Plate number of the car.
    #
    def initialize(plate_number)
        super(plate_number)
    end

    public
        def engine_sound(state=0)
            sound = if (state == 0)
                        "brrrrrr..."
                    else
                        "Zoooom Zoooom...."
                    end
            puts("Vroom Vroom...")  # Bug: Always prints "Vroom Vroom..." instead of the calculated sound
        end


        #
        # Private method to calculate the mileage of the car.
        #
        # @param [Float] fuel_consumed Amount of fuel consumed in gallons.
        # @param [Float] distance_traveled Distance traveled in miles.
        # @return [Float] Calculated mileage in miles per gallon.
        #
        def calculate_mileage(fuel_consumed, distance_traveled)
            mileage = distance_traveled / fuel_consumed
            puts "Mileage: #{mileage} miles per gallon"
            mileage
        end
end