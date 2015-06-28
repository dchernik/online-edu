def message_1
  puts "Message 1"
  return 1
end

def message_2
  puts "Message 2"
  return 2
end

speed_limit = 45
car_speed = 50

# The ternary if/else allows you to write if/else statements
# on one line.
(car_speed < speed_limit) ? message_1 : message_2

exit



# The ternary if/else is higher in precedence than
# the an if/else statement.
if ((car_speed > speed_limit) ? message_1 : message_2) == 1
  puts "The return value is 1"
end
