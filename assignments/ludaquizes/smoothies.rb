# https://github.com/phlco/smoothies
require 'pry'

# docs you may enjoy
# http://www.ruby-doc.org/core-2.0/Hash.html
# http://ruby-doc.org/core-2.0/String.html
# http://ruby-doc.org/core-2.0/Array.html

# Every Morning I make a smoothie with the follow ingredients:

smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}
binding.pry
# Write a function called blend.
# It should take all the smoothie ingredients (not the measurements)
# Chop up and mix all the characters
# Output a mixed string of characters

def blend(smoothie_ingredients)
  smoothie_ingredients.keys.join.delete(' ').split('').shuffle.join
end

# create a class called Blender
# It should have a method that takes an array of ingredients and returns a
# mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function
# when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender
  attr_accessor :blender_on
  def initialize
    @blender_on = false
   end

   def blend(ingredients)
      if @blender_on
        ingredients.keys.join.delete(' ').split('').shuffle.join
      else
        "can't blend"
      end
   end

   def switch
    @on = @on ? false : true
   end

   def switch_on
    @blender_on = true
   end

   def switch_off
    @blender_on = false
  end
end

binding.pry
# Move on to gluten_free.rb