# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
result = ""
(range[0]..range[-1]).to_a.each{|letter| result << letter unless range.include?(letter)}
result

# Very Long Way Below!!!!
# alphabet = ("a".."z").to_a
# index_of_range_letters = []
# all_missing_letters = []
#
# i = 0
# while i < range.length
#   index_of_range_letters << alphabet.index(range[i])
# i += 1
# end
#
# i = 0
# while i < (index_of_range_letters.length - 1)
#   each_index = index_of_range_letters[i]
#   if each_index + 1 < index_of_range_letters[i + 1]
#     all_missing_letters << alphabet[each_index + 1]
#     ((index_of_range_letters[i + 1] - each_index) - 1).times do
#       all_missing_letters << alphabet[each_index + 1]
#       each_index = each_index + 1
#       end
#     end
#   i += 1
#   end
# all_missing_letters.length > 1 ?  all_missing_letters.uniq.join : nil
end

puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("ace") #bonus test

puts "Your method returned:"
puts result
puts

if result == "bd"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("abps") #another bonus test

puts "Your method returned:"
puts result
puts

if result == "cdefghijklmnoqr"
  puts "PASS!"
else
  puts "F"
end
