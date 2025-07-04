n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).max
b = gets.chomp.split(" ").map(&:to_i).max
puts a + b
