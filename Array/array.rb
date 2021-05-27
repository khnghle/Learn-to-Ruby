# Array : Ordered Collection of objects (list)
  # Array is an object that acts as a container for other object 
    nums = [1,2,3,4,5]
    p  nums.class
    
    puts nums # prints array elements each on own line 
    print nums # prints array in bracket without new line 
    p nums # prints array in brackets as is 

# Special syntax to create array of strings
  name = %w[Jack Jill Jonh James] # dont need quotes or commas. Space is treated as a new string

# Special syntax to create arrays 
  p Array.new(3, []) # create an multidimentional array of arrays  
    #first arguement for number of elements populated in array which all will be nil
    # second argument is what will populate the element in the array

# Array.length returns number of values in array 
  # Interesting fact fruits[3] *syntatical sugar  * is equivalent to fruits.[](3)

# .fetch method grabs index from array
  # if you try to fetch index that doesnt exists, you get an error 
  # can provide a second arguement which if you don't get a value, you control what you get back 
  names = %w[Tom Cameron Bob]
  p names.fetch(2)
  p names.fetch(500, "Unknown")

# Extract sequential indexes 
  nums = [0,1,2,3,4,5,6,7,8,9]

  p nums[2,4] # grab index 2 and the totla number of elements after it ig [2,3,4,5]
    # always return an array object 
    # if number of elements exceed length of array, it will stop at length of array 
  
# Can use range to express the start and end index 
  p nums[3..6] # index 3,4,5 and 6

# .values_at() can be used to access multiple elements of an array into a new array 
  p nums.values_at(0,2,4,5,8) # Duplicates are allowed 

# Slice : identical to bracket notation 
  p nums.slice(3) # grabs value at position 
  p nums.slice(100) # nil 
  p nums.slice(2,3) # [2,3,4]
  p nums.slice(4..6) # [4,5,6]

# Array mutation 
  fruits = %w[Apple Orange Grape Banana]
  fruits[1] = "Watermelon"
  p fruits # replace an item 
  fruits[4] = "Raspberry"
  p fruits # add element to the end 
  fruits[10] = "Kiwi" #add element to the 10th index, with nils between 

  # Can use range or bracket notation with 2 arguements as well

# Length returns the number of elements inside array including nil 
# Size returns number of elements inside of array as well (same as length)
# Count without argrument (same as length and size)
  # pass arguement, returns number of time that element is present in array

#.empty? checks to see if array length is equal to zero 
# .nil? checks to see if class is equal to nil

# .to_a method converts range to array 
  letters = ("a".."j").to_a
  p letters[100].nil? # can be used to inspect if element exists 

# .first and .last methods : returns the first or the last element of the array (fixNum)
  p nums.first 
  # if you pass in a numeric argument, you get an array with size of that number from beginning or end 
  p nums.last(3)

  def custom_first(arr, num = 0)
      return arr[0] if num == 0
      return arr[0, num]
  end

  def custom_last(arr, num = 0)
      return arr[-1] if num == 0
      return arr[-num..-1]
  end 

  custom_last(nums, 3)

# .push method : push elements to the end of the array. Can add as many arguments as you want. Mutate original array 
  locations = ["House", "Airport", "Bar"]
  locations.push("Restaurant")
  # Can also use shovel operator 
  locations << "Saloon"
  p locations

# Insert : can choose where you insert elements you specify 
  locations.insert(1, "Theatres") # insert at a particular index 

# .pop method : remove element from the end of the array 
  p locations
  p locations.pop # returns last element 

  # can pass in an argument to grab a numberic amount from an array 
  p locations.pop(2) # will return an array now 

# Shift and unshift 
  arr = [1,2,3,4,5,6,7,8,9]
  # Shift removes from the beginning of the element. Can pass in numberic value as an argument to specific amount 
  p arr.shift(2)
  # Unshift adds to the beginning the the array 
  p arr.unshift(-1,0)

# Equality and Inequality Operators to compare arrays 
  a = [1,2,3]
  b = [1,2,3]

  p a == b # compares positions, so returns true 
  # if order is different or different number of elements, returns false 
  # case senstive 

# Spaceship operator 
  # <==> " returns 4 possible values 
    # 0 : if both are equal 
    # -1 : if left side is smaller
    # +1 : if left side is greater
    # nil : if sides are not comparable 
  
  # Good for custom sort algorithm
  p [1,2,3] <=> [3,2,1] # since 1 is smaller than 3, it will return -1

# .to_a method : converts range to an array 
  letter_range = "a".."t"
  p letter_range
  p letter_range.to_a

# is_a? method : checks to see if its a particular class  
  # if you pass in an arguement the the class type you are checking for 
  # List of classes : Fixnum, Float, Bignum, TrueClass, FalseClass, NilClass, Array, String
  puts 1.is_a?(Array) # use to examine to vertify right object type or if its right object type within class hiearchy 

  arr = ["a", "b"]

  if arr.is_a?(Array) # Vertification 
    arr.each {|e| puts e}
  end 

# Data type class Hierarchy 
#-- BasicObject 
#-- Object 

#-- Integer
#-- Fixnum Bignum 
