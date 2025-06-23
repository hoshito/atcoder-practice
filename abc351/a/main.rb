a_arr = gets.chomp.split(" ").map(&:to_i)
b_arr = gets.chomp.split(" ").map(&:to_i)
puts a_arr.sum - b_arr.sum + 1
