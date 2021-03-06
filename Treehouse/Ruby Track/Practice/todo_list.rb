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
  
 
  def remove_item(name)
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
      todo_items.delete_at(index)
      return true
    else
      return false
    end
  end
end
