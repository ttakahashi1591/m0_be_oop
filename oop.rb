# # Write a class called Unicorn
# # it should have a dynamic name attribute
# # it should have a color attribute, that is silver by default
# # it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color

    def initialize(name)
        @name = name
        @color = "silver"
    end

    def say(message)
        "*~* #{message} *~*"
    end
end

unicorn1 = Unicorn.new("Sparky")
puts unicorn1.name
puts unicorn1.color
puts unicorn1.say("Like diamonds in the sky!")

# #  Write a class called Vampire
# #  it should have a dynamic name attribute
# #  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
# #  it should have a thirsty attribute, that is true by default
# #  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirsty

    def initialize(name, pet = "bat", thirsty = true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end

    def drink
        self.thirsty = false
        puts "#{name} has drank enough blood!"
    end
end

vampire1 = Vampire.new("Count Dracula")
puts vampire1.name
puts vampire1.pet
puts vampire1.thirsty
vampire1.thirsty
puts vampire1.thirsty

vampire2 = Vampire.new("Edward", "gargoyl")
puts vampire2.name
puts vampire2.pet
puts vampire2.thirsty
vampire2.thirsty
puts vampire2.thirsty

# # I am having trouble with the drink method switching to fasle and printing the interpolated string "__ has drank enough blood!". 
# # I have tried to switch the method used in lines 49 and 56 to say self.drink, but then the error suggests that self.thirsty is recoomended.

# #  Write a Dragon class
# #  it should have a dynamic name attribute (string)
# #  it should have a dynamic rider attribute (string)
# #  it should have a dynamic color attribute (string)
# #  it should have a is_hungry attribute that is true by default
# #  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :is_hungry

    def initialize(name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
        @eat_count = 0
    end

    def eat 
        @eat_count += 1
        if @eat_count >=4
            self.is_hungry = false
            puts "#{name} is not hungry anymore!"
        else
            puts "#{name} has had something to eat!"
        end
    end
end

dragon1 = Dragon.new("Drogon", "Daenerys", "Black")
puts dragon1.name
puts dragon1.rider
puts dragon1.color
puts dragon1.is_hungry
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
puts dragon1.is_hungry

dragon2 = Dragon.new("Vhagar", "Aemond", "Bronze")
puts dragon2.name
puts dragon2.rider
puts dragon2.color
puts dragon2.is_hungry
dragon2.eat
dragon2.eat
dragon2.eat
dragon2.eat
dragon2.eat
puts dragon2.is_hungry 

# Similar to Vampire example, I am having toruble with the eat method switching to interpolated string "__ is not hungry anymore!".
# I tried adding 5 instances of the eat method to see if that would trigger it, but this just seems provide an error suggesting to use is_hungry. 


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = age >= 33
        @is_old = age >= 101
        @has_ring = name == "Frodo"
    end

    def celebrate_birthday
        self.age += 1
        self.is_adult = age >= 33
        self.is.old = age >= 101
        puts "#{name} enjoys celebrating their birthday! They are #{age} years old."
    end
end

hobbit1 = Hobbit.new("Pippen", "Loyal", 40)
puts hobbit1.name
puts hobbit1.disposition
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.has_ring
hobbit1.celebrate_birthday
hobbit1.celebrate_birthday
hobbit1.celebrate_birthday
puts hobbit1.age
puts hobbit1.is_adult
puts hobbit1.is_old

hobbit2 = Hobbit.new("Frodo", "Brave")
puts hobbit2.age
puts hobbit2.disposition
puts hobbit2.age
puts hobbit2.is_adult
puts hobbit2.is_old
puts hobbit2.has_ring
hobbit2.celebrate_birthday
hobbit2.celebrate_birthday
hobbit2.celebrate_birthday
hobbit2.celebrate_birthday
hobbit2.celebrate_birthday
puts hobbit2.age
puts hobbit2.is_adult
puts hobbit2.is_old

# Similar to the previous two examples, I am not able to get the celebrate birthday method to print the interpolated string "__ enjoys celebrating their birthday! They are #{age} years old."
# I have also tried to add more instances of the celebrate_birthday method, but it still does not seem to do the trick. 