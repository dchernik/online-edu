=begin
Problem Statement

9 is a Kaprekar number since 
9 ^ 2 = 81 and 8 + 1 = 9

297 is also Kaprekar number since 
297 ^ 2 = 88209 and 88 + 209 = 297.

In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
Find if a given number is a Kaprekar number.
=end

def kaprekar?(k)
  square_as_string = (k * k).to_s(10)
  num_digits_in_k = k.to_s(10).length
  right_n_digits = square_as_string[-num_digits_in_k.. - 1].to_i(10)
  left_n_digits = square_as_string[0...num_digits_in_k].to_i(10)
  left_n_1_digits = square_as_string[0...num_digits_in_k - 1].to_i(10)
  (k == right_n_digits + left_n_digits) || (k == right_n_digits + left_n_1_digits)
end