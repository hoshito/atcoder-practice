n = gets.chomp.to_i
k_arr = gets.chomp.split(" ").map(&:to_i)
sum = k_arr.sum
ans = 10 ** 9
(1 << n).times do |i|
  a = 0
  n.times do |j|
    if i[j] == 1
      a += k_arr[j]
    end
  end
  tmp = a > sum - a ? a : sum - a
  ans = ans > tmp ? tmp : ans
end
puts ans
