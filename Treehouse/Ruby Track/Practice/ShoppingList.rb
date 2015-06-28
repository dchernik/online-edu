def create_list
  print "What is teh anme of the list? "
  name = gets.chomp
  
  hash = {name: name, items: []}
end

def add_list_item
  print "What is the item called? "
  item_name = gets.chomp
  
  print "How many? "
  quantity = gets.chomp.to_i
  hash = {name: item_name, quantity: quantity}
end

def print_separator(char='-')
  puts char * 80
end

def print_list(list)
  puts "List: #{list[:name]}"
  print_separator()
  list[:items].each do |item|
    puts "\tItem: " + item[:name] + "\t\t\t" + "Quantity: " + item[:quantity].to_s
  end
  print_separator()
end

list = create_list()
puts "Let's add items to the list:"
list[:items].push(add_list_item())
list[:items].push(add_list_item())
list[:items].push(add_list_item())
print_list(list)