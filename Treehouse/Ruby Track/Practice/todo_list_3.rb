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
      if found
        break
      else
        index += 1
      end
    end
    if found
      return index
    else
      return false
    end
    
    # or just:
    # todo_items.each_with_index do |item, idx| return idx if item.name == name end
    # return nil
  end
 
  def remove_item(name)
    if index = find_index(name)
      puts index
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
  
  def print_list(kind='all')
    puts "#{name} List - #{kind} items"
    puts "-" * 30
    todo_items.each do |todo_item|
      case kind
      when 'all'
        puts todo_item
      when 'complete'
        puts todo_item if todo_item.complete?
      when 'incomplete'
        puts todo_item unless todo_item.complete?
      end
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
todo_list.mark_complete("Milk")
todo_list.print_list
p todo_list.inspect
