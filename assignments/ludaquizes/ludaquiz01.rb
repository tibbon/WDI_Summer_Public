# http://en.wikipedia.org/wiki/Ludacris
# http://www.youtube.com/watch?v=cvrKzmkdBTI

require 'pry'

NAMES =  %w(David Chris Sherri Vanessa Tiffany Tony Sheena Robyn Kylie Beth Liz Stu)

class RecordLabel
  attr_accessor :roster
  def initialize
    @roster = []
  end
end

class Hoe
  attr_accessor :name
  def initialize
    @name = NAMES.sample
  end
end

h1 = Hoe.new
h2 = Hoe.new
h3 = Hoe.new
h4 = Hoe.new
h5 = Hoe.new
h6 = Hoe.new
h7 = Hoe.new
h8 = Hoe.new
h9 = Hoe.new

ludacris = {
  name: 'Christopher Brian Bridges',
  occupations: [
    'Rapper',
    'Actor',
    'Entrepreneur'
  ],
  hoes: {
    '302' => [h1, h2, h3],
    '617' => [h4, h5],
    '347' => [h6, h7, h8, h9]
  }
}

def_jam = RecordLabel.new
def_jam.roster << ludacris

# Programmatically solve the following questions
# Write a line of code for each

# Part 1

# How many occupations does Ludacris have?
ludacris[:occupations].count
# What number job is 'Rapper'?
# How many area codes does Ludacris have?
# How many hoes does Ludacris have?
# How many hoes does Ludacris have in 617?
# List all Ludacris's hoes names


# Part 2
# Write a method for RecordLabel that "signs" an artist to a roster
# "Sign" Ludacris to Def Jam
# I should be able to write def_jam.sign ludachris

# Rewrite the code so that Ludacris is an artist object, not a hash
# Create a method so that adds a hoe to an area code
# Comment out your earlier ludacris code

# Edit the Hoe's initialization method so that they get a randomly assigned area code.
# Move the class code into separate files for RecordLable, Hoe and Artist

binding.pry