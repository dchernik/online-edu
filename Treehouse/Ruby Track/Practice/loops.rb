loop do
  print "Do you want to continue? "
  answer = gets.chomp.downcase
  
  break if answer == 'no'
  puts 'No digits in the response please!' if answer.index(/\d/)
end
