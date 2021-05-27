# if statement 

# Syntax 
  # if condition
    # code to execute if true
  # end 
  if 5 < 7 # can also check equality if password == "topsecret"
    puts "That math statement is true" # execute if conditional passes
  else 
    puts "its is not true"
  end

# Truthy statement : not false or nil (0 and "" is truthy)
# Falsy statement : false, nil 

# elsif stacks on if statements if original isnt met 
  color = "Green"

  if color == "Red"
    puts "Red is rad"
  elsif color == "Green"
    puts "Green is great"
  else
    puts "Color is different"
  end 

# Multiple conditionals: && and || 
  ticket = true 
  age = 22 

  if age > 18 && ticket # both needs to be true/truthy 
    puts "You are allowed in"
  end

  budget = 5 
  price = 10 
  mood = "Happy"

  if budget > price || mood == "Happy" # as long as one passes 
    puts "Lets buy item"
  end 

# nested if statements : need to ned if statements 
  def meal_plan(time_week, time_day)
    if time_week == "weekday"
      if time_day == "breakfest"
        return "Cereal" 
      elsif time_day == "lunch"
        return "Sandwich"
      else 
        return "Nuggets"
      end 
    else
      return "Takeout"
    end 
  end 

  p meal_plan("weekday", "breakfest")
# Case statement : syntatically simple for many if statements 
  def rate_my_food(food)
    case food # functions as equality operator 
    when "Steak" # different cases 
      "Steak sauce!"
    when "Sushi"
      "Soy sauce!"
    when "Tacos", "Burritos", "Quesadillas"
      "Salsa!"
    else # default  
      "No sauce"
    end 
  end 

  puts rate_my_food('Sushi')

  def calculate_grade(grade)
    case grade 
    when 90..100 # range 
      "A"
    when 80..89 then "B" # different syntax, if within range then send back "B". Saves on lines 
    when 70..79 then "C"
    else "Fail"
    end 
  end 

  puts calculate_grade(75)

# Bang operator (!) use to negate (opposite) of a conditional 
  # turns truthy to falsy value 
  # !! turns values to its boolean value

# unless keyword 
  password = "whiskers"

  if password != "whiskers"
    puts "Not allowed!"
  else 
    puts "Allowed"
  end 

  # can be written as  (reverse of if statement)
  unless password == "whiskers"
    puts "Not allowed!"
  else
    puts "Allowed"
  end 

# Inline modifier : used if statemnt executed within if statement is one line
  number = 5000 
  if number > 2500 
    puts "Huge number"
  end 

  # can be written as 

  puts "Huge number" if number > 2500 # can stack conditionals && and || 

  x = 8 

  unless x > 10 
    puts "x is not greater than 10"
  end 

  # can be written as 

  puts "x is not greater than 10" unless x > 10 

# NOTATION CAN BE USED FOR WHILE LOOPS TOO

# Conditional Assignment 
  y = nil 
  p y 

  y ||=5 # conditional operator will only assign value if value is nil 

  # Use case 

  greeting = "Hello"
  index = 100 
  letter = greeting[index]
  letter ||= "not found" # establish security 
  puts letter 