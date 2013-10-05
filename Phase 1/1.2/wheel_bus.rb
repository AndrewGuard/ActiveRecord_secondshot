class Car

    attr_reader :color

    def initialize(args)
        @color = args[:color]
        @wheels = 4
    end
    
    def drive
        @status = :driving
    end
   
    def brake
        @status = :stopped      
    end
    
    def needs_gas?
        return [true,true,false].sample
    end
end

class Bus < Car
    attr_reader :passengers, :color, :wheels, :num_seats, :fare
   
    def initialize(args)
        @color = args[:color]
        @wheels = args[:wheels]
        @num_seats = args[:num_seats]
        @fare = args[:fare]
        @passengers=[]
    end
    
    def drive
        return self.brake if stop_requested?
    end
    
    def admit_passenger(passenger,money)
        @passengers << passenger if money > @fare
    end
    
    def stop_requested?
        return [true,false].sample
    end
    
    def needs_gas?
        return [true,true,true,false].sample
    end
end
 
 
class Motorbike < Car
    
    def initialize(args)
        @color = args[:color]
        @wheels = 2
    end
 
    def drive
        @speed = :fast
    end
    
    def needs_gas?
        return [true,false,false,false].sample
    end 
    
    def weave_through_traffic
        @status = :driving_like_a_crazy_person
    end
end


# car = Car.new(color: 'purple')
# p car.needs_gas?
# p car.color


# bus = Bus.new(color: 'orange', wheels: 45, num_seats: 13, fare: 150)

# p bus.admit_passenger("Pedro", 151)

motorbike = Motorbike.new(color: "Bright Red")

p motorbike.brake

motorbike.weave_through_traffic

# bus = Bus.new('bus')

=begin

They have the brake and drive methods in common, which are the interface between them. needs_gas? has 
different probabilities in each so it is not a shared method entirely (at least, it does different things
at different times).

=end


