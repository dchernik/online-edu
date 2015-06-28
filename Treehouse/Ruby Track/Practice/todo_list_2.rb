require "./todo_item"

class TodoList
  attr_reader :name, :todo_items
  
  def initialize(name)
    @name = name
    @todo_items = []
  end
  
  def add_item(name)
    todo_items.push(TodoItem.new(name))
  end
  
  def find_index(name)
    index = 0
    found = false
    todo_items.each do |todo_item|
      if todo_item.name == name
        found = true
      end
      index += 1
      break if found
    end
    if found
      return index
    else
      return false
    end
  end
 
  def remove_item(name)
    if index = find_index(name)
      todo_items.delete_at(index)
      return true
    else
      return false
    end
  end
  
  def mark_complete(name)
    if index = find_index(name)
      todo_items[index].mark_complete!
      return true
    else
      return false
    end
  end
end

todo_list = TodoList.new("Groceries")
todo_list.add_item("Milk")
todo_list.add_item("Eggs")
todo_list.add_item("Bread")
todo_list.add_item("More Bread")
if todo_list.remove_item("More Bread")
  puts "Removed 'More Bread'"
end

