# The assessment on scope, 
# functions

# Question 1
# If this were the only code in a main.rb file
# and you ran "ruby main.rb"  from the terminal,
# what would the output be from running the program?

# main.rb
# Variable with local scope
# not part of a class. 
# Can't use it elsewhere. 
my_name = "Chris"
 
# We're just defining a function 
# called say_my_name
# This function tries to output
# the contents of a variable 
# named "my_name"
def say_my_name
	# my_name is a local variable
	# variable is not initialized!
	# doesn't have any value!
	# And doesn't have a type  
	puts my_name
end
# => Nothing
# We never call the function!!!
### Pretend the above code doesn't exist
# Question 2
my_name="Chris"

def say_my_name
	puts my_name
end

# Now we're calling the function.
# a.k.a. "Invoking" the function, or 
# the method. 
say_my_name 
# => Now we get an error
# NameError: undefined local variable or method `my_name' for main:Object
# from (pry):3:in `say_my_name'
# on line 34, "my_name" the variable 
# isn't defined

# Question 3
my_name="Chris"

# This function now accepts 
# an argument called my_name
# An argument is a variable
# that the method has access to.
def say_my_name(my_name)
	# the my_name variable now
	# corresponds to the argument
	# defined in the function
	# sometimes called 'parameter'
	puts my_name
end
say_my_name
# This function requires 
# an argument!
# ArgumentError: wrong number of arguments (0 for 1)
# from (pry):7:in `say_my_name'

# Question 4
my_name="Chris"

def say_my_name(my_name)
	puts my_name
end

# This my_name is the my_name 
# defined at the beginning of the question. 
# my_name is evaluated, and is the string "Chris"
# so with this function, 
# say_my_name("Chris")
say_my_name(my_name)

# Brief departure from the quiz. 
# say_my_name(["this can be", "an array!"])


# Question 5
my_name = "Chris"

# Compare with question 2
# def say_my_name
#	puts my_name
# end
# We've changed the name of the argument to 
# Potato
def say_my_name(potato)
	# my_name is a local variable, 
	# as per q2. 
	# my_name is not defined within 
	# the scope of the function.
	puts my_name
end

say_my_name(my_name)
#NameError: undefined local variable or method `my_name' for main:Object
#from (pry):3:in `say_my_name'

# Question 6
my_name = "Chris"

def say_my_name(potato)
	# potato is the argument that was passed
	puts potato
end
say_my_name(my_name)

# Ben's Bonus! Question
my_name = "Chris"

def say_my_name(potato)
	# potato is the argument that was passed
	puts potato
	puts name
end
say_my_name(my_name)