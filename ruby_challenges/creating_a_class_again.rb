class Kitty

    def set_name=(kitty_name)
        @name = kitty_name
    end

    def get_name
        return @name
    end

    def set_age=(kitty_age)
        @age = kitty_age
    end

    def get_age
        return @age
    end

    def set_temperment=(kitty_temperment)
        @temperment = kitty_temperment
    end

    def get_temperment
        return @temperment
    end
end

lily_kitty = Kitty.new
lily_kitty.set_name="Lily"
kitty_name = lily_kitty.get_name

lily_kitty.set_age = 10
kitty_age = lily_kitty.get_age

lily_kitty.set_temperment = "sweet"
kitty_temperment = lily_kitty.get_temperment

puts "#{kitty_name} is a #{kitty_temperment}, #{kitty_age} year old kitty."