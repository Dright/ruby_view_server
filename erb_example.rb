require 'erb'

x = 42
str = "Hello!"
array = ['first', 'second', 'third']
hash = {:name => 'Dright', :age => 22}
template1 = ERB.new "The value of x is: <%= x %>"
template2 = ERB.new "array to upcase: <%= array.map { |e| e.upcase} %>"
template3 = ERB.new "name in the hash: <%= hash[:name] %>"
puts template1.result(binding)
puts template2.result(binding)
puts template3.result(binding)
