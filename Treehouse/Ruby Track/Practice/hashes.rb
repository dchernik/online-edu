items = {} # items = Hash.new
items = {name: 'Bread'}
items["name"] = 'Milk'
items[1] = 'Number one'
items[:weight] = 'One ton'
items["delete me"] = 'please'
items.delete('delete me')
puts items
p items.keys
puts items.has_key?(1)
puts items.member?(:weight)
puts items.fetch(:name)
items.store(:new_key, 'new value')
puts items
puts '--------------'
p items.values
puts items.has_value?("brea")
puts items.value?("Bread")
p items.values_at(1, :name)
puts '--------------'
i = items
p i
items[:key] = 'value'
p i
puts "items: #{items.inspect}"
puts i.length
inverted = i.invert
p i
p inverted
p i.shift
puts i.inspect
puts items.inspect
n = items.merge({})
p n 
p items
n[:unique] = "I am unique"
p n 
p items
n = n.merge({unique: 'I am new unique'})
p n






















