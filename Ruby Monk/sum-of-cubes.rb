=begin
Problem Statement
Compute the sum of cubes for a given range a through b.

Write a method called sum_of_cubes to accomplish this task

Example Given range 1 to 3 the method should return 36
=end

def sum_of_cubes(a, b)
  (a..b).inject(0) do |sum, n| sum + n**3 end
end