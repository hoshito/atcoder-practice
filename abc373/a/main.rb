ans = 0
12.times do |i|
  s = gets.chomp
  if s.length == i + 1
    ans += 1
  end
end
puts ans
