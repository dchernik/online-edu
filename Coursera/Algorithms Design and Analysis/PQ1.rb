=begin
Your task is to compute the number of inversions in the file given, 
where the ith row of the file indicates the ith entry of an array.
Because of the large size of this array, you should implement the 
fast divide-and-conquer algorithm 

At any step in merge(), if left[0] is greater than right[0], then there are 
left.size inversions. because left and right subarrays are sorted, so all 
the remaining elements in left-subarray (left[1], left[2] … left.length - 1) 
will be greater than right[0]
=end

numbers = open('IntegerArray.txt')
nArr = []
numbers.each { |n| nArr << n.chomp.to_i }
numbers.close

# global variable, number of inversions
$invs = 0

def merge_sort(arr)
  len, answ = arr.size, []#{:invs => 0, :result => [] }
  
  # array is sorted if has one element
  return arr if len == 1
  
  # sort array's left and right halves
  left = merge_sort(arr[0, len/2])
  right = merge_sort(arr[len/2, len - len/2])
 
  # merge arrays to answ array while they both have elements
  while !left.empty? && !right.empty?
    if left[0] < right[0]
      answ << left[0]
      left.shift
    elsif left[0] > right[0]
      answ << right[0]
      right.shift
      $invs += left.size
    else
      answ << left[0] << right[0]
      left.shift
      right.shift
    end
  end
  
  # if one of arrays still has elements append them all to answ
  answ += !left.empty? ? left : !right.empty? ? right : []

  return answ
end

merge_sort(nArr)

p $invs

