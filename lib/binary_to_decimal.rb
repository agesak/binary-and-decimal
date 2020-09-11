# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# def binary_to_decimal(binary_array)
#   binary_array = binary_array.reverse
#   decimal = []
#   binary_array.each_with_index do |binary, index|
#     decimal.push(binary * 2**index)
#   end
#   return decimal.sum
# end

# with map/each_with_index
def binary_to_decimal(binary_array)
  binary_array = binary_array.reverse
  return binary_array.each_with_index.map{|binary, index| binary * 2**index}.sum
end

# using times
# def binary_to_decimal(binary_array)
#   binary_array = binary_array.reverse
#   decimal = []
#   length = binary_array.length
#   length.times do |index|
#     decimal.push(binary_array[index] * 2**index)
#   end
#   return decimal.sum
# end

binary_array = [0, 0, 1, 0, 0, 1, 1, 1]
puts "answer: #{binary_to_decimal(binary_array)}"