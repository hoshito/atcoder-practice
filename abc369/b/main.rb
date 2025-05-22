n = gets.chomp.to_i
l = 0
r = 0
ans = 0
n.times do
  a, s = gets.chomp.split(" ")
  a = a.to_i
  if s == "L"
    if l != 0
      ans += (l - a).abs
    end
    l = a
  else
    if r != 0
      ans += (r - a).abs
    end
    r = a
  end
end
puts ans
