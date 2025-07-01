n, k = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)
a_arr.sort!
ans = a_arr[n - 1] - a_arr[k]
(1..k).each do |i|
  ans = [a_arr[n - 1 - i] - a_arr[k - i], ans].min
end
puts ans
