name = 'Jason'
puts 'Hello ' + name
puts "Hello #{name}"
puts 'Hello #{name}'
puts "Hello #{name}"
puts %q(Hello #{name})
puts %Q(Hello #{name})
puts %Q|Hello #{name}|
puts ('Hello World!');
puts ('Hello World!')
puts 'Hello World!';
puts 'Hello World!'
puts '--------------'
name = gets
puts "Hello #{name}!"
puts '--------------'
print 'Enter your name: '
name = gets.chomp
puts "Hello #{name}!"
puts '--------------'
string = "Hello, my
name is
Ruby"
puts string
puts '--------------'
string = <<-STRING
Hello, my
name is
Ruby!
STRING
puts string
puts '--------------'
strings = <<-ANYTHINGYOUWANT
Hello, my
name is
Ruby!
ANYTHINGYOUWANT
puts string
puts '--------------'
string = <<-EOF
Hello, my
name is
#{name}!
EOF
puts string
puts '--------------'
name = 'Ruby'
string = 'Hello,\smy\sname\sis #{name}!\sHere\scomes\sa\snew\sline: \nyou wish!'
puts string
string = "Hello,\smy\sname\sis\s#{name}!\sHere\scomes\sa\snew\sline: \nHere I am!"
puts string







