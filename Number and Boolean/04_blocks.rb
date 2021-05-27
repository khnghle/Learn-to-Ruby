# Code block
# Ruby Block is a collection of ruby statements that follows a method call 
# block is attached to method call

# loops - two ways to write it out

5.times {
  puts "Hello world"
}


puts

3.times do 
  puts "Bye world"
end 

puts

# block variables are defined in vertical pipes. Count always starts as 0
3.times do |count|
  puts "this is the current count #{count}"
end 

puts 

5.times { |count|
  puts "this is the current count #{count}"
}

puts 

# Challenge : use times method to output the first 10 multiples of 3
10.times {
  |i|
  puts "3 times #{i+1} is #{3*(i+1)}"
}
