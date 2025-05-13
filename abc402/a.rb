# a = 97, z = 122
s = gets.chomp.split("")
ans = []
s.each do |c|
  ord = c.ord
  if ord < 97 || ord > 122
    ans << c
  end
end
puts ans.join("")
