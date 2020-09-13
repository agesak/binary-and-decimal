# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  exponent = binary_array.length - 1
  index = 0
  decimal_num = 0

  while index < binary_array.length
    decimal_num += binary_array[index] * 2 ** exponent
    index += 1
    exponent -= 1
  end
  return decimal_num
end

# Optional: Add a decimal_to_binary method which converts a decimal number received as a parameter into an array of binary digits. Then write 3 tests for the method.
def decimal_to_binary(decimal_num)
  binary_array = []
  until decimal_num == 0
    binary_array.push(decimal_num % 2)
    decimal_num = decimal_num / 2
  end
  return binary_array.reverse
end


