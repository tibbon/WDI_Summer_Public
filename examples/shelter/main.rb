# Looking at the list of gems and looking for a match
require 'twitter'

# Looking in the local lib directory of my project
require 'lib/beekeeper'


# In my current directory
require_relative 'animals'
require_relative 'shelter'
require_relative 'clients'

my_animal = Animal.new