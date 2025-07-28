n, m = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)
if a_arr.sum <= m
  puts "Yes"
else
  puts "No"
end
