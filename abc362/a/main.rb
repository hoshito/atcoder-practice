r, g, b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp
case c
when "Red" then
  puts [g, b].min
when "Green" then
  puts [r, b].min
when "Blue" then
  puts [r, g].min
end
