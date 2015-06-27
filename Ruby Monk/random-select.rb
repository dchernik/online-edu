=begin
Problem Statement
Create a method 'random_select' which, when given an array of elements (array) 
and a number (n), returns n randomly selected elements from that array.

Example: Given an array [1, 2, 3, 4, 5] and 2 should return two random numbers 
from the given array. (Note: those two random numbers may be the same number.) 
The method should return those random values in a new array.

Calling the method twice should ideally return different sets of values 
(though it may not).
=end

def random_select(array, n)
  # method 1: array.sample(n)
  # method 2: array.shuffle.slice(0, n)
  answ = []
  n.times do 
    srand 
    answ << array[rand(n)] 
  end
  answ
end

p random_select([1, 2, 3, 4, 5], 2)