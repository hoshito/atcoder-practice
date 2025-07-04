n = gets.chomp.to_i
ans = 0
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  if a < b
    ans += 1
  end
end
puts ans

