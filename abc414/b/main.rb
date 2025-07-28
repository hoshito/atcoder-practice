n = gets.chomp.to_i
ans = []
len = 0
n.times do
  c, l = gets.chomp.split
  len += l.to_i
  if len > 100
    puts "Too Long"
    exit
  end
  ans << c * l.to_i
end
puts ans.join("")
