require_relative "./misc/csv_reader.rb"
require_relative "./objects/car.rb"
require_relative "./objects/motorcycle.rb"
require_relative "./objects/parking_spot.rb"


include CSVReader

#CSVReader.convert_vehicle

CSV_OBJECTS = CSVReader.convert_parking
@floors = CSV_OBJECTS[0]
vehicles = CSV_OBJECTS[1]


#
# Look for available parking spot for your vehicle.
#
# @param [Integer] floor_number Number of the floor
#
# @return [Nil] None
#
def look_for_spot(floor_number)
    for floor in @floors do
        if floor.floor_number == floor_number
            for p_spot in floor.parking_spots do
                if p_spot.available == "TRUE"
                    return p_spot
                end
            end
        end
    end
    return nil
end

while true
    menu = <<~MENU
        |------------------------------------------|
        | Enter the type of vehicle that you have  |
        |------------------------------------------|
        | 1 - Car                                  |
        | 2 - Motorcylce                           |
        |------------------------------------------|
    MENU
    puts menu

    choice = gets.chomp
    vehicle = nil

    case choice.to_i
    when 1
        car_menu = <<~MENU
            |------------------------------------------|
            |    Enter the plate number of your car    |
            |------------------------------------------|
        MENU
        puts car_menu

        vehicle = Car.new(gets.chomp)
        vehicle.engine_sound(0)
        break
    when 2
        motorcyle_menu = <<~MENU
            |------------------------------------------|
            | Enter the plate number of your motorcyle |
            |------------------------------------------|
        MENU
        puts motorcyle_menu
        
        vehicle = Motorcycle.new(gets.chomp)
        vehicle.engine_sound(0)
        vehicles << vehicle
        break
    else
        puts "--!--Please try again--!--"
        next
    end
end

while true
    menu = <<~MENU
        |------------------------------------------|
        | Select the floor you'd like to park at   |
        |------------------------------------------|
        | 1 - Floor A                              |
        | 2 - Floor B                              |
        | 3 - Floor C                              |
        | 4 - Floor D                              |
        | 5 - Floor E                              |
        | 6 - Exit                                 |
        |------------------------------------------|
    MENU
    puts menu

    choice = gets.chomp

    case choice.to_i
    when 1
        parking_spot = look_for_spot("A")

        if parking_spot == nil
            puts "--!--There is no available parking spot for that floor--!--"
            next
        end

        menu = <<~MENU
        |------------------------------------------|
        | There are available spots for parking A  |
        | Do you want to park here? y/n            |
        |------------------------------------------|
        MENU
        puts menu

        choice = gets.chomp

        if choice == "y" || choice == "Y"
            puts "--!--Your Parking Spot id is #{parking_spot.name}--!--"
            puts vehicle.engine_sound(1)
            puts puts puts vehicle.calculate_mileage(0.5, 1)
            vehicle.parking_spot = parking_spot
            parking_spot = vehicle
            break
        else 
            next
        end

        break
    when 2
        parking_spot = look_for_spot("B")

        if parking_spot == nil
            puts "--!--There is no available parking spot for that floor--!--"
            next
        end

        menu = <<~MENU
        |------------------------------------------|
        | There are available spots for parking B  |
        | Do you want to park here? y/n            |
        |------------------------------------------|
        MENU
        puts menu

        choice = gets.chomp

        if choice == "y" || choice == "Y"
            puts "--!--Your Parking Spot id is #{parking_spot.name}--!--"
            vehicle.parking_spot = parking_spot
            parking_spot = vehicle
            puts vehicle.engine_sound(1)
            puts puts puts vehicle.calculate_mileage(0.5, 1)
            break
        else 
            next
        end

        break
    when 3
        parking_spot = look_for_spot("C")

        if parking_spot == nil
            puts "--!--There is no available parking spot for that floor--!--"
            next
        end

        menu = <<~MENU
        |------------------------------------------|
        | There are available spots for parking C  |
        | Do you want to park here? y/n            |
        |------------------------------------------|
        MENU
        puts menu

        choice = gets.chomp

        if choice == "y" || choice == "Y"
            puts "--!--Your Parking Spot id is #{parking_spot.name}--!--"
            puts vehicle.engine_sound(1)
            puts puts puts vehicle.calculate_mileage(0.5, 1)
            vehicle.parking_spot = parking_spot
            parking_spot = vehicle
            break
        else 
            next
        end
        
        break
    when 4
        parking_spot = look_for_spot("D")

        if parking_spot == nil
            puts "--!--There is no available parking spot for that floor--!--"
            next
        end

        menu = <<~MENU
        |------------------------------------------|
        | There are available spots for parking D  |
        | Do you want to park here? y/n            |
        |------------------------------------------|
        MENU
        puts menu

        choice = gets.chomp

        if choice == "y" || choice == "Y"
            puts "--!--Your Parking Spot id is #{parking_spot.name}--!--"
            puts vehicle.engine_sound(1)
            puts puts puts vehicle.calculate_mileage(0.5, 1)
            vehicle.parking_spot = parking_spot
            parking_spot = vehicle
            break
        else 
            next
        end

        break
    when 5
        parking_spot = look_for_spot("E")

        if parking_spot == nil
            puts "--!--There is no available parking spot for that floor--!--"
            next
        end

        menu = <<~MENU
        |------------------------------------------|
        | There are available spots for parking E  |
        | Do you want to park here? y/n            |
        |------------------------------------------|
        MENU
        puts menu

        choice = gets.chomp

        if choice == "y" || choice == "Y"
            puts "--!--Your Parking Spot id is #{parking_spot.name}--!--"
            puts vehicle.engine_sound(1)
            puts puts puts vehicle.calculate_mileage(0.5, 1)
            vehicle.parking_spot = parking_spot
            parking_spot = vehicle
            break
        else 
            next
        end

        break
    when 6
        puts "--!--Thank You and Come Again--!--"
        break
    else
        puts "--!--Please try again--!--"
        next
    end
end



#To do refact the whole class



