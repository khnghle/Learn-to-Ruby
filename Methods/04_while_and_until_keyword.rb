# while keyword : run whlie a condition is true 
  i = 1 
  while i < 10
    puts i 
    i += 1 
  end 

  puts 

  def enter_password
    status = true 

    while status 
      print "enter username: "
      username = gets.chomp.downcase
      print "enter password: "
      password = gets.chomp.downcase 

      if username == "boris" && password == "password"
        puts "Entry granted"
        status = false 
      elsif username == "quit" || password == "quit"
        puts "Better luck next time"
        status = false
      else puts "try again"
      end 
   end 
  end 

# until keyword : execute until a condition is true
   i = 1 
   until i > 9 
    puts i 
    i += 1 
   end 