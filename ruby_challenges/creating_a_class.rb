#Class name must be capitalized
class Ferret
    #setter (equal sign is part of the method name)
    def set_name=(ferret_name)
        #@ signifies instance variable
        @name = ferret_name
    end

    #getter
    def get_name
        return @name
    end

    def set_owner
        @owner_name = owner_name
    end

    def get_owner
        return @owner_name
    end

    def squeal
        return "squeeee"
    end
end

#Create a new instance of the Ferret class (object)
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name
puts "#{ferret_name} says #{my_ferret.squeal}."