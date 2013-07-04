# create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.

class Person
  attr_accessor :stomach, :allergies

  def initialize(allergies = [])
    @stomach = []
    @allergies = allergies
  end

  def allergic_to?(food)
    (food & @allergies).any?
  end

  def eat(food)
    unless allergic_to? food
      @stomach.push food
    else
      "barf"
    end
  end

end

chris = Person.new
chris.allergies << "gluten"

beth = Person.new
beth.allergies << "scallops"

phil = Person.new(["ham", "pineapple"])

# Create a Person named Chris. Chris is allergic to gluten.
# Create a Person named Beth. Beth is allergic to scallops.
# Feed them the following foods

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]
hawaiian_pizza = ["cheese", "tomatoes", "pineapple", "gluten", "ham"]