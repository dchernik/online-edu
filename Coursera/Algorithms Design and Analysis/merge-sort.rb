def merge_sort(arr)
  len, answ = arr.size, []
  
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
    elsif right[0] < left[0]
      answ << right[0]
      right.shift
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

a = ["e", "d", "c", "b", "a"]
p merge_sort(a)