# Strings = collection of sequenced characters
  puts "Hi, I'm a string and can include character$ and numb3rs"

  name = "Borris"
  revenue = "$23 dollars"

  puts name, revenue # executes one after the other 

  puts 

# Methods
  space = " "
  p space.length 
  p space.class 

  puts 

  # You can also create a string using the string class 
    # Allowed but never used. 
    name = String.new("Le")
    p name 

# Converting to string 
  p 5.to_s.class 

  puts 
# Multiline string : "Here document" 
  # starts with << and identifier (will also be used at end of multiline string)
  # everything within 2 identifier will be literal (tabs and newlines are taken into consideration)
words = <<MLS
  This is a multi-line string
  when it's outputed.
Tabs are preserved.
Goodbye!
MLS

  puts words

  puts 

# Special Characters
  # You can use single or double quotes for strings 
  # Backslashes (\) tells ruby to ignore next character
  # \n is a special syntax to create a new line
  # \t is a special syntax to create a tab 
  puts "Juliet said \"Goodbye\" to Romeo"

  puts 

  #Single vs Double quotes 
  puts "Hello\nworld" # Adds newline : Since double quotes has more flexiblity, its more commonly used 
  puts 'Hello\nword' # Doesn't add new line : single quote interprets string literally (can't use string interpolation)

  puts 

# Equality with strings
    # < and > compares values within alphabet a < b 
    # case sensitve A < a and also Z < a 
  a = "Hello"
  b = "hello"
  c = "Hello"

  p a == b 
  p a == c

  puts

# Concatenate Strings 
  first = "Harry "
  last = "Potter"

  p first + last 

  # first += last 

  # Alternatively you can use concat (mutates original string) 
    # first.concat(last)

  # Or you can use the shovel operator (not limited to 2 strings ) : multates first string 
    # p first << last << " Wizard"

  # If you want to insert string in the beginning use prepend : also mutates  
    # last.prepend(first)
    # p last 
 
  puts

# Lengths and size 
  # .length : size including special characters and spaces 
  # .size : exactly the same 
    # return back a number which we can method chain on 
    a = "hello world"
    p a.length.odd?

  puts 

# Strings in ruby are mutable (subject to change)
  story = "Once upon a time in a land far, far away"
    p story.length
    # index starts at zero
    p story[3] # Reference the 3rd index 
    # Can use negative numbers which are values from the end 
    p story[-4] # jumps from zero index 
    # if index doesnt exist, it returns nil 
    p story[100]
    p story.slice(3) # extracts character from string and returns that char. Exactly the same as bracket notation 
      # Does not mutate string like in JS 
    
  puts
# To extract multiple characters, add a second argument which represents number of characters 
  p story[5,4] # start at index 5, and returns next 4 characters
  p story.slice(5,4) # same results 

  p story[-7, 5] # returns away (so reads left to right)

  puts 

# range syntax, grab char from initial point til end point 

    # Double dots (inclusive - includes last character)
    p story[27..39]
    p story.slice(27..39)

    
    # Triple dots (exclusive - doesnt includes last character)
    p story[27...39]
    p story.slice(27...39)

    # If end point exceeds the length of the length of string, ruby just extracts til the end  
    p story[32...1000]

    # Can use negative index 
    p story[25..-9]

    puts 

# Overwritting Chacters '
    thing = "rocket ship"
    # Change one character 
    thing[0] = "p"

    # Change multiple characters
    fact = "I love blueberry pie"
    fact[7,4] = "rasp"
    # Change multiple characters with range syntax
    fact[7..10] = "blue"
    # Does not need to be of same length 
    fact[2..5] = "absolutely adore"

    p fact
    puts 
# Case Method
    # Capitialize method returns new string where first char of string to uppercase and rest lowercase
    p "heLLo World".capitalize # Hello world
    # upcase : all uppercase 
    # downcase : all lowercase 
    # swapcase : reverse upper and lowercase 
    p "boRIs".swapcase

    puts 

# .reverse Method 
    # Reverse string, flip around last index becomes first and so on..
      # Returns a brand new string 
    p "ruby is fun".upcase.reverse

    puts 
# Bang Methods (!): mutates original string (side effect)
    word = "hello"
    p word.capitalize # word in all caps 
    p word # unmodified

    # Bang method version 
    p word.capitalize!
    p word # now modified 

    # .upcase! .downcase! .reverse! .swapcase!
    #All are considered different methods and bang version only available on some methods

    puts 
# Includes : boolean method
    # Checks if something exists within another string (case sensitive)
    # Normalize string first, all lowercase or all uppercase 
    # Space counts a character 
    name = "Snow White"
    p name.include?("h")
    p name.downcase.include?("snow")

    puts 
# is empty or nil
    # Empty method checks to see if string length is equal to zero 
    p "".empty?
    # Empty string returns zero, which is false when nil check. This is usually for tests for outputs 
    p name[1000].nil?