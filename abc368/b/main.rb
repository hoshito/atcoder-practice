n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
while true do
  count = 0
  a.each do |x|
    if x > 0
      count += 1
    end
  end
  if count <= 1
    break
  end
  a.sort!.reverse!
  a[0] -= 1
  a[1] -= 1
  ans += 1
end
puts ans
