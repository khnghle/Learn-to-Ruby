# Outputs code in screen to next line
# puts is considered a statement. Could include ; but most coders dont include
puts "Hello World!"
  # 5 vs "5" is different data types 

  # 5 + "3" won't work on ruby as string coercion isn't possible
  # "3" + "5" works through string concatination 
  # puts by itself adds empty line break 

# prints work similar to puts but without the line break
print "Hello "
print "World!"

# p method shows us "" as indicator as string, as well as other indicators of what objects are and how they operate
  # shows \n for line break 
p "Hello 
world"

# You can print out expressions (like 1 + 3)
p 3 > 1
  # exponents can be done through ** 
  p 2 ** 4

=begin
  Multi-line comments 
=end
puts "this text works"