n = gets.chomp.to_i
s_arr = []
n.times do
  s_arr << gets.chomp
end
set = Set.new
(0..n-1).each do |i|
  (i+1..n-1).each do |j|
    set << s_arr[i] + s_arr[j]
    set << s_arr[j] + s_arr[i]
  end
end
puts set.size
