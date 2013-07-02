class Car
  attr_accessor :color, :year, :make, :model
  def initialize(color, year, make, model)
    @color = color
    @year = year
    @make = make
    @model = model
  end

  def honk
    puts 'honk'
  end
end

car_1 = Car.new('red', 2004, 'Kia', 'Soul')
car_2 = Car.new('blue', 2010, 'Ford', 'F150')

car_2.color=('green')

car_2.honk