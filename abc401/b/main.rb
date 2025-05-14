n = gets.chomp.to_i
status = "logout"
err = 0
n.times do
  s = gets.chomp
  if s == "private" && status == "logout"
    err += 1
  elsif s == "login"
    status = "login"
  elsif s == "logout"
    status = "logout"
  end  
end
puts err
