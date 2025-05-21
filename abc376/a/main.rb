n, c = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
time = arr[0]
ans = 1
(1..n-1).each do |i|
  t = arr[i]
  if (t - time) >= c
    ans += 1
    time = t
  end
end
puts ans
