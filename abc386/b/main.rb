s = gets.chomp.split("")
ans = 0
while s.length > 0 do
  ans += 1
  if s.length >= 2 && s[0] == "0" && s[1] == "0"
    s.shift(2)
  else
    s.shift(1)
  end
end
puts ans
