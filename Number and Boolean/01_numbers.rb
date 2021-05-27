# Two types of numbers 
# Integers and floats
# Note everything is an object 
# Object type defines the methods on it. 
  # Type has common blueprint (class) with class methods
  # Depending on class, methods may vary  

# bigNum class = Large integer 
# fixNum class = integer
# float class = floats 

# you can see with .class method 
# p 5.class
# p 5.01.class 

# Convert number to string 
str = "5"
p str.class # Displays class. Can be method chained 
p str.to_i.class #converts string to i 
p str.to_f.class #converts string to float 
p str.to_s.class #converts string to string

pi = 3.14 
p pi.to_i #converts float to integer (removes decimals)

# Boolean methods on integers 
    # Remember .next returns next number
  # .odd? and .even? doesn't work on floats 

  # Question mark represents a method which returns a boolean
  p 10.odd?
  p 10.even?

# Arithmetic Method 
  # +, -, *, /, % are all considered methods 
    # 1 + 2 is the same as writing 1.+(2)

  # Parenthesis are optional 
    # 1.-(5) is the same as 1.-5 

puts # 3 ways to divide 
p 10 / 5 
p 10./(5)
p 10.div(5)

puts # 3 ways to find modulo 
p 10 % 3 
p 10.%(3)
p 10.modulo(3)

puts 
# ,between? Returns boolean if value is between two other values 
  p 20.between?(10,30) # true
  # Works for floats  
  p 1.2.between?(1.1,1.3) # true 

puts
p 10.9.to_i # chop off decimal 
p 10.5.floor # rounds down 
p 10.5.ceil # rounds up 
p 3.14.round #rounds up and down depending on decimal. Without argument, rounts to integer  
p 3.14.round(2) #rounds to argument's decimal point 
p -35.67.abs # absolute value (can be used with integer)