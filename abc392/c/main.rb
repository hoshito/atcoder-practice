n = gets.chomp.to_i
p_arr = gets.chomp.split.map(&:to_i)
q_arr = gets.chomp.split.map(&:to_i)

arr = []
q_arr.each_with_index do |q, i|
  arr[q] = i + 1
end

ans = []
(1..n).each do |i|
  ans << q_arr[ p_arr[ arr[i] - 1 ] - 1 ]
end
puts ans.join(" ")
