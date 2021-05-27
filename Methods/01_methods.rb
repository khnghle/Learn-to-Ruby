# Method 
  # Grouped collection of ruby statement with purpose with the intent of being reused (function)

  # Method definition 
    def introduce_myself 
      # Best practice 2 spaces within method body 
      puts "I am handsome"
    end

  # Method Invocation (need to invoke after method definition)
    # introduce_myself

# Local variable (only present within method)
    def say_hi 
      expression = "I am a genius"
      puts expression
    end 

    # say_hi

# Argument and Parameters 
    def praise_person(first, last)
      puts "#{first} #{last} is amazing"
    end 
  
    # praise_person("Bob", "Belcher")

# Return values 
    def addition(num1, num2)
      return num1 + num2 # return keyword terminates method 
    end

    # puts addition(1,2)
    
    # if puts the output of a method with last line returns nil like "puts method", you see nil 

    # Default value on the last line, is automatiicaly returned 

    def return_guess
      5
    end 

    puts return_guess #returns 5 by default 

# respond_to? : sees if method if compatible with data type/ object 
    n = 1000 
    p n.respond_to?("next") # true 
    p n.respond_to?("length") # false 

    # use case : if data type is compatible, then execute 
    if n.respond_to?("next")
      p n.next 
    end 

# symbol : label (more lightweight, as strings object has methods attached to it)
    # :length : string without method baggage
    1.respond_to?(:next) # more space efficient 

# Ternary Operator : simple if else design 
    puts 1 < 2 ? "Yes, it is" : "No it isn't"

  pokemon = "Pikachu"
  puts pokemon == "Charizard" ? "Yes" : "No "

# Default Parameters : Optional parameters are kept at end. Value is assigned in case no value is passed in as argument 
    def make_call (number, international_code = 1, area_code = 646)
      puts "Calling #{international_code}-#{area_code}-#{number}"
    end 
    make_call(1234)

# Calling method inside another method or interpolated string 
    def add(a,b)
      a + b
    end 

    def subtract(a,b)
      a - b
    end 
    
    def calculator (a,b, operator = "add")
      if operator == "add"
        add(a,b)
      else 
        subtract(a,b)
      end 
    end 

    p calculator(5,2, "subtract")