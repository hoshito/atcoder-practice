n = gets.to_i
a_arr = gets.split.map(&:to_i)
ans = (a_arr.sum) ** 2
a_arr.each do |a|
  ans -= (a ** 2)
end
puts ans / 2
