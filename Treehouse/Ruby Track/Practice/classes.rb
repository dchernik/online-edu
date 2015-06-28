class Student

  def say_hello
    puts say_goodbye
  end

  def say_goodbye
    "goodbye"
  end

end

Student.new.say_hello
string = String.new
p string.methods.sort
p string.respond_to?('upcase')
p string.respond_to?(:upcase)

class Name
  attr_reader :title, :first_name, :middle_name, :last_name
  attr_writer :frist_name
  attr_accessor :last_name
  def initialize(title, first_name, middle_name='', last_name)
    @title = title
    @middle_name = middle_name
    @last_name = last_name
  end
  
  def title=(new_title)
    @title = new_title
  end
  
  def to_s
    @title + ' ' + @last_name
  end
end







