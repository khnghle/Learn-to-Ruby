# Count down from 5 to 1. 5 and 1 are inclusive 
  # Scope exists in block 
  5.downto(1){
    |i|
    puts "Countdown: #{i}"
  }

  puts 

  5.downto(0) do |i|
    puts "Current value #{i}"
  end 

  puts 

# Counting up 

5.upto(10) do |i|
  puts "we are at #{i}"
end 

puts 

# For loop!!!
# First arguement is goal and second is each step 
0.step(100, 10) {
  |i|
  puts "forward: #{i}" 
}

puts 
# Cna go backwards too 
100.step(0, -10) {
  |i|
  puts "backwards : #{i}" 
}