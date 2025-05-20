d = gets.chomp.split("")
def reverse(x)
  return "S" if x == "N"
  return "N" if x == "S"
  return "E" if x == "W"
  return "W" if x == "E"
end

if d.size == 1
  puts reverse(d[0])
else
  puts reverse(d[0]) + reverse(d[1])
end
