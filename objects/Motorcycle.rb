require_relative "./../objects/Vehicle.rb"

#
# Motorcycle. Object that inherits from vehicle.
#
class Motorcycle < Vehicle
    #
    # Constructor of the object
    #
    # @param [String] plate_number Plate number of the motorcycle.
    #
    def initialize(plate_number)
        super(plate_number)
    end

    public
        #
        # Method that return the engine sound of the motorcycle.
        #
        # @return [String] String representation of the sound of the vehicle.
        #
        def engine_sound(state=0)
            sound = if (state == 0)
                        "brrrrrr..."
                    else
                        "Skrrt Skrrt...."
                    end
            puts(sound)
        end


        #
        # Method to calculate the mileage of the car.
        #
        # @param [Float] fuel_consumed Amount of fuel consumed in gallons.
        # @param [Float] distance_traveled Distance traveled in miles.
        # @return [Float] Calculated mileage in miles per gallon.
        #
        def calculate_mileage(fuel_consumed, distance_traveled)
            # Bug: Incorrect formula, swapping distance and fuel_consumed
            mileage = fuel_consumed / distance_traveled
            puts "Mileage: #{mileage} miles per gallon"
            mileage
        end
end
