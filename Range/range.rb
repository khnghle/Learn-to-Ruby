# Range : interval from point a to point b 
  nums = 1..5 # 3 dots excludes last number 
  puts nums.class # range 
  p nums.first # first num of interval
  p nums.last # last num of interval 

  p nums.first(4) # first 4 nums of interval 
  p nums.last(4) # last 4 nums of interval 

  nums = 90...150 # excludes 150

  p nums.last # Ruby feature which shows 150 rather than 149 as Ruby is still storing the value of 150 
  p nums.last(1) # Work around Ruby feature which shows true last number 

  # Ranges can be applied to alphebet as well 
  alphabet = "a".."z" # Behind the scene its stored within an array 
  # if range is between A..z, you will pacture random other characters too, so stick to either capitalized numbers or lowercase 

# .size method only works on numeric range, but not alphabetical range 
  numbers = 143..769 
  p numbers.size # number of values within a range 

# .include? method checks to see if a numeric value or a letter exists within a range 
  half_alphabet = "a".."m"
  puts half_alphabet.include?("E") #case sensitive

# Triple equal signs checks to see if a char exists within a range 
  p half_alphabet === "k"