# rand : random number generator 
  puts rand 

# .round() 
  puts rand.round(2)

# Random number up to a range 
  puts rand(100) # goes up to 100 but never reach it : 0 - 100 
    # returns an int 

# if you want a floating point number
  puts rand * 100

# If you want a very specific range  
  puts rand(50..60)