n, l, r = gets.chomp.split.map(&:to_i)
ans = 0
n.times do
  x, y = gets.chomp.split.map(&:to_i)
  if x <= l && r <= y
    ans += 1
  end
end
puts ans
