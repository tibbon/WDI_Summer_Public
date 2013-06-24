def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def multiply(a, b)
  return a * b
end

def divide(a, b)
  return a / b
end

def calculate(x, y)
  puts add(x, y)
  puts subtract(x,y)
  puts multiply(x, y)
  puts divide(x, y)
end

# The following line would run the calculate function
# calculate(1,1)

def prompt_numbers
  puts "Give me a number"
  a = gets.chomp.to_f
  puts "Give me another number"
  b = gets.chomp.to_f
  return a, b
end

def prompt_function
  puts "Add, subtract, multiple, divide?"
  return gets.chomp
end

# This function runs two other functions that prompt the user for input
def prompt
  function = prompt_function
  a, b = prompt_numbers
  return a, b, function
end

a, b, math_function = prompt

case math_function
when "add"
   puts add(a,b)
when "subtract"
   puts subtract(a,b)
when "multiply"
   puts multiply(a, b)
when "divide"
   puts divide(a, b)
end


