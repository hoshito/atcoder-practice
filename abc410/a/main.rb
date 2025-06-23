n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i

puts a_arr.count { |a| k <= a }
