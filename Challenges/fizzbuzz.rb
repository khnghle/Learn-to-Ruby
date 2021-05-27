def fizzbuzz(num)
  # iterate from one to number 
  # if num is divisable by 3, output Fizz
  # if num is divisable by 5, output Buzz
  # if num is divisable by both 3 and 5, output Fizzbuzz 

  i = 1 

  while i <= num 
    if (i % 5 == 0) && (i % 3 == 0) 
        puts "Fizzbuzz"
    elsif i % 5 == 0 
        puts "Buzz"
    elsif i % 3 == 0
         puts "Fizz"
    else puts i 
    end 

    i += 1 
  end 
end 

fizzbuzz(20)