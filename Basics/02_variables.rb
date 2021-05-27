# Variable is a reference to an object
  # Sometimes called pointer or identifier 
  # Everything in Ruby is considered an object (string, number, float..etc )
  # Variable points to object
# Ruby is dynamically typed. Types don't have to be declared. Data types can change. 
name = "Mike"
last_name = "Boris" # string
handsome = true; # boolean
age = 24 + 1 # number : right side is always evaluated first

# Lower Snake Case
# Variable names start with lowercase letter or underscore
# Spaces are not allowed (use underscore)
# Variable name are case sensitive
# Don't use Ruby's reserved keyword (puts/prints/etc)

# puts name + " " + last_name
# puts age + 5

# Parallel Variable Assignment

a = 10
b = 20
c = 30 

# assignments via positioning 
a, b, c = 10, 20, 30

# shortcut to print all values 
# p a, b, c

a = 1
b = 2 

# variable reassignment 
a, b = b, a
# p a, b

# To make a const variable, write name in all caps
# You can technically change the value of a const, but Ruby will spit out an error log. 
NAME = "Pete"
AGE = 5

# String Interpolation
p "My name is #{NAME}"
# Can preform operations 
p "My age is #{Age + 1}"