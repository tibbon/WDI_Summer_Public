class Animal
  attr_accessor :fur
  def bite
    puts "Bites"
  end
end

class Cat < Animal
  def meow
    puts "Meow"
  end
end

class Person < Animal
  def speak(word)
    puts word
  end
end

class Vehicle
  attr_accessor :engine_type, :year, :color
end

class Watercraft < Vehicle
end

class Boat < Watercraft
  attr_accessor :propeller_type
end

class Car < Vehicle
  attr_accessor :number_of_doors
end

class Motorcycle < Vehicle
end

my_motorcycle = Motorcycle.new
my_car = Car.new
my_boat = Boat.new

my_motorcycle.year = 2010
my_car.year=1995
my_boat.year=1980