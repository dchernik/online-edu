=begin
Problem Statement
Given a custom class MyArray, 
write a 'sum' method that takes a block parameter.

Example: 
my_array = MyArray.new([1, 2, 3]) 
my_array.sum gives 6 
my_array.sum(10) gives 16 
my_array.sum(0) {|n| n ** 2 } gives 14
=end

class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    if block_given? 
      array.inject(initial_value) do |sum, n| sum + yield(n) end
    else
      array.inject(initial_value) do |sum, n| sum + n end
    end
  end
end