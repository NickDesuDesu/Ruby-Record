#
# Holds information about the parking spot and the vehicle currently parked in it.
#
class ParkingSpot
    # @return [Boolean] Checks if no vehicle is parked.
    attr_accessor :available
    # @return [String] Type of parking spot (Motorcycle or Car).
    attr_accessor :type
    # @return [String] The name of the parking spot.
    attr_accessor :name
    # @return [Vehicle] The vehicle parked on the parking spot.
    attr_accessor :vehicle

    #
    # Cosntructor for parking spot object.
    #
    # @param [Boolean] available availability of the spot.
    # @param [String] type Type of parking spot.
    # @param [String] name Name of the parking spot.
    #
    def initialize(available, type, name)
        @available = available
        @type = type
        @name = name
    end
end