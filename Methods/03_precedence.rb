# Precedence : check parentheses first 
def authenticate_agent(rank, name, credentials)
  if (rank === "007" && name == "Bond") || credentials == "Agent"
    puts "Allowed"
  else 
    puts "Denied, #{name}"
  end 
end 

authenticate_agent("007", "Bond", "Spy")