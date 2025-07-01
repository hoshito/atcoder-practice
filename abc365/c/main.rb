n, m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)

a_arr.sort!

sum = 0
ans = 0
(0..n-2).each do |i|
  sum += a_arr[i]
  next if a_arr[i] == a_arr[i + 1]
  x = (m - sum) / (n - 1 - i)
  ans = [ans, x].max
end

sum += a_arr[n - 1]
if sum <= m
  puts "infinite"
else
  puts ans
end
