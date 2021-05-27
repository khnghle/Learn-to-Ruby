# gets (gets a string input from the user, but it includes the /n(new line character))

# .chomp (removes /n )

#gets.chomp = method chaining 

puts "Hi, what's your name?"
name = gets.chomp

puts "Great! What's your age?"
age = gets.chomp.to_i # convert string to integer 

puts "Cool, so your name is #{name} and your age is #{age}." 

