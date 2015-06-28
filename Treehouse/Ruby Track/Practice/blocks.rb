def  block_method
  p 'inside method'
  yield
  yield
  p 'inside method - II'
  yield
end

block_method do p 'I am a block' end

#def get_name
#  print "Enter your name: "
#  name = gets.chomp
#  yield name
#  name
#end
#
#name = get_name do |ur_name| puts "Your name is #{ur_name}" end
#p name

def get_name(prompt, &block)
  print prompt + ": "
  name = gets.chomp

  block.call(name) if block_given?
  name
end

name = get_name('Enter ypur name') do |ur_name| puts "Your name is #{ur_name}" end



