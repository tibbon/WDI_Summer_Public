class Person
  attr_accessor :name, :age, :gender, :experience, :money

  # Called with Person.new
  def initialize(name, gender, favorite_color)
    @name = name
    @gender = gender
    @experience = 0
    @age = 0
    @favorite_color = gender
  end

  def have_a_birthday
    @age = @age + 1
    speak("I had a birthday, and am now #{@age}")
  end

  # Behavior/method
  def speak(words)
    puts words
  end
end

new_baby = Person.new("Little Jimmy", "male", "blue")
p new_baby.age
new_baby.favorite_color
# puts person_1.inspect
# puts person_1.age
# person_1.gender = "male"









# person_1 = Person.new
# person_2 = Person.new
# person_1.name=("Robert Paulson")
# puts "His name is #{person_1.name}"

# person_2.name=("Tyler Durden")
# puts person_2.name

# puts person_1.name=("John")
# puts person_1.name=("Mike")
# person_1.age= 30

# puts person_1.inspect


# puts person_1.class
# puts ["foo"].class
# puts "This is a string".class

