# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Functions
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class SimpleCalculator
include Functions
end

class FancyCalculator
  include Functions
  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

fancy_calculator = FancyCalculator.new
simple_calculator = SimpleCalculator.new

num_1 = 76
num_2 = 38
num_3 = 36

puts "Currently adding #{num_1} and #{num_2} with FancyCalculator:"
puts

total = (num_1 + num_2)
if fancy_calculator.add(num_1, num_2) == total
puts "The total was #{total}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

puts
puts "Currently subtracting #{num_2} from #{num_1} with FancyCalculator:"
puts

subtract = (num_1 - num_2)
if fancy_calculator.subtract(num_1, num_2) == subtract
puts "The result was #{subtract}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

puts
puts "Currently multiplying #{num_1} with #{num_2} with FancyCalculator:"
puts

product = (num_1 * num_2)
if fancy_calculator.multiply(num_1, num_2) == product
puts "The result was #{product}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

puts
puts "Currently dividing #{num_2} by #{num_1} with FancyCalculator:"
puts

result = (num_1 / num_2)
if fancy_calculator.divide(num_1, num_2) == result
puts "The result was #{result}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

puts
puts "Currently calculating square root of  #{num_3} with FancyCalculator:"
puts

result = Math.sqrt(num_3).to_i
if fancy_calculator.square_root(num_3) == result
puts "The result was #{result}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

simple_calculator.square_root # undefined method `square_root' for #<SimpleCalculator:0x0000000229bb78> (NoMethodError)
