class Monster
  attr_reader :name, :actions
  
  def initialize(name)
    @name = name
    @actions = {
      screams: 0  
    }
  end
  
  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams! "
    block.call
  end
  
  def say(&block)
    print "#{name} says... "
    yield
  end
end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }
monster.scream do puts 'BOO!' end
puts monster.actions