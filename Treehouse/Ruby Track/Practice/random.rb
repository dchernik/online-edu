r = Random.new.rand(5) # will generate 0 integers 0, 1, 2, 3, 4
loop do
  puts r
  break if r == 4 
  r = Random.new.rand(5)
end