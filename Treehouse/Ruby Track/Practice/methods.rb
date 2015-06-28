# APrint out that we're adding two numbers together, 
# then return the result of addition
def add (a, b)
  answ = a + b
  puts "Adding #{a} and #{b}..."
  puts "Answer is: #{answ}."
  return answ
end

puts add(2, 3)

string = "Treehouse"
string.each_char{|c| print "#{c}-"} # => "T-r-e-e-h-o-u-s-e"

haiku = <<-EOF
A string with three lines
Is considered multi line
Ruby code haiku
EOF

haiku.each_line{ |line| puts "* #{line}" }

# Prints the following:
# * A string with three lines
# * Is considered multi line
# * Ruby code haiku

5.downto(3) { |number| print number } # 543

array = [1, 2, 3]

array.each { |item| print "-#{item}-" }
# Prints out:
# -1--2--3-

array.select { |item| item > 2 } 
# This returns a new array with: [3]

array.delete_if { |item| item == 1 } 
# The array is now: [2, 3]

array = [1, 2, 3]
array.reject { |item| item % 3 == 0 }
# The above returns a new array: [1, 2]

array.count 
# The above returns 3
array.count { |item| item % 3 == 0 }
# The Array#count method can also take a block.
# The above statement returns 1.

hash = { 'name' => 'Jason', 'location' => 'Treehouse' }
hash.each do |key, value|
  puts "key: #{key} value: #{value}"
end
# Prints the following:
# key: name value: Jason
# key: location value: Treehouse
hash.each_key{ |key| puts "key: #{key}" }
# Prints the following:
# key: name
# key: location
hash.each_value { |val| puts "val: #{val}" }
# Prints the following:
# val: Jason
# val: Treehouse
hash.keep_if{ |key, val| key == "name" }
# The hash is now:
# { 'name' => 'Jason' }
hash.reject { |key, val| key == "name" }
# The hash is now:
# {}
hash = { 'name' => 'Jason', 'location' => 'Treehouse' }
hash.select { |key, val| key == "name" }
# Returns a new hash:
# { 'name' => 'Jason' }