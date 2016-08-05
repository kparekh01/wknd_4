# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

class WhizBangCalculator < FancyCalculator
  include Functions

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end

  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end
end

# Copy your driver code from the previous exercise and more below:

whiz_bang_calc = WhizBangCalculator.new
fancy_calculator = FancyCalculator.new
simple_calculator = SimpleCalculator.new

num_1 = 76
num_2 = 38
num_3 = 36

puts "Currently adding #{num_1} and #{num_2} with WhizBangCalculator:"
puts

total = (num_1 + num_2)
if whiz_bang_calc.add(num_1, num_2) == total
puts "The total was #{total}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

puts
puts "Currently subtracting #{num_2} from #{num_1} with WhizBangCalculator:"
puts

subtract = (num_1 - num_2)
if whiz_bang_calc.subtract(num_1, num_2) == subtract
puts "The result was #{subtract}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

puts
puts "Currently multiplying #{num_1} with #{num_2} with WhizBangCalculator:"
puts

product = (num_1 * num_2)
if whiz_bang_calc.multiply(num_1, num_2) == product
puts "The result was #{product}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

puts
puts "Currently dividing #{num_2} by #{num_1} with WhizBangCalculator:"
puts

result = (num_1 / num_2)
if whiz_bang_calc.divide(num_1, num_2) == result
puts "The result was #{result}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end

puts
puts "Currently calculating square root of  #{num_3} with WhizBangCalculator:"
puts

result = Math.sqrt(num_3).to_i
if whiz_bang_calc.square_root(num_3) == result
puts "The result was #{result}"
puts
puts "PASS!"
else
puts "The Test Failed!"
end
