n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)

set = Set.new(a_arr)
arr = set.to_a

arr.sort!
puts arr.size
puts arr.join(" ")
