n = gets.chomp.to_i
pos = [0, 0]
ans = 0
n.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  ans += ((pos[0] - x) ** 2 + (pos[1] - y) ** 2) ** 0.5
  pos = [x, y]
end
ans += ((pos[0] - 0) ** 2 + (pos[1] - 0) ** 2) ** 0.5
puts ans
