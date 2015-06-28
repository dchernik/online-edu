a = %w(qwe rty uio)
a << 'addidtion'
a.push('another one')
a.unshift('in the beginning')
a += ['three', 'more', 'items']
p a
puts '------------'
puts a.at(0)
puts a.first
puts a.last
puts a[-1]
puts a[-3]
puts '------------'
a.insert(0, 'new beginning')
p a
puts '------------'
puts a.count('uio')
puts a.include?('uio')
puts a.count
puts '------------'
p a
a.pop
a.shift
p a
d2 = a.drop(2)
p a
p d2
s = a.slice(2,3)
p a
p s
arr = [1,2,3]
p arr.count do |i| i % 3 == 0 end








