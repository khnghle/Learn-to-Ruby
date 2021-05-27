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