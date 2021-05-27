# Boolean : true or false
# Another object type 

# Boolean method is also referred to as a predicate method 

# Comparison Operators
  # == is a comparison which returns a boolean. Checks for types as well! 
p 10 == 10 
p 10 == "10" 

# Special exception 
  # float vs integer. If values is the same return true
  # better practice convert both to same data type  
p 5 == 5.0 
p 5.to_f == 5.0 

# Inequality Operator 
  # != a negative comparison which returns a boolean 
  p 10 != 10  #true 
  p 10 == 10 # false
 
  # Strings are case senstive 
    # Best practice use .downcase or .upcase to normalize the strings 
    
    p "Hello" == "hello" # false 
    p "Hello".upcase == "hello".upcase # true

# Comparison operators <, <=, >, >= 

