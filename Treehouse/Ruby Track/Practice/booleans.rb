def flash_car_speed(speed)
  10.times do
    print "\r#{speed}"
    sleep 0.25
    print "\r  "
    sleep 0.25
  end
  puts "\n"
end

def display_car_speed(speed)
  puts speed
end

p true.class
p true.to_s
p false.inspect
p nil.class  
p nil.inspect
nil.to_i
nil to_a
nil.to_h
nil.nil?
!nil
  
name = 'your name'
p name if defined?(name)
name ||= 'new name'
TrueClass.new # error
FalseClass.new # error
NilClass.new # error