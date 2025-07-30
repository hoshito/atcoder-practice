n, m = gets.chomp.split.map(&:to_i)
l_arr = Array.new(n + 1, 0)
r_arr = Array.new(n + 1, 0)
m.times do
  l, r = gets.chomp.split.map(&:to_i)
  l_arr[l] += 1
  r_arr[r] += 1
end

ans = 10 ** 9
tmp = 0
(1..n).each do |i|
  l = l_arr[i]
  tmp += l
  ans = tmp if tmp < ans

  r = r_arr[i]
  tmp -= r
end
puts ans
