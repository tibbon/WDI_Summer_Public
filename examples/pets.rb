#This is roughly the same as below
class Pet
  attr_accessor :name, :age
    def initialize(name, age)
    @name = name
    @age = age
  end
  def backwards_code_name
    @name.reverse
  end
end



# Same as above
class VerbosePet
  def initialize(name, age)
    @name = name
    @age = age
  end
  def name=(name)
    @name = name
  end
  def name
    return @name
  end
end

p = Pet.new("Jade", 13)
p1 = Pet.new("Hypatia", 1)
p2 = Pet.new("Niezsche", 7)
puts p.name = "Gloves"
p.name