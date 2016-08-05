# Below, we have two types of calculators. The simple one can perform basic arithmetic,
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is
# a fundamental concept in OOP known as Inheritance. Your exercise is to research
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code
# below. You must also write the driver code to test your classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:

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
