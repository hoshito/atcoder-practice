n = gets.chomp.to_i
s_c_arr = []
n.times do
  s, c = gets.chomp.split(" ")
  s_c_arr << [s, c.to_i]
end
s_c_arr.sort_by! { |s, c| s }
t = s_c_arr.map { |s, c| c }.sum

puts s_c_arr[t % n][0]
