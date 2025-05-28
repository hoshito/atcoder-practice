n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
tmp = []
a.each_with_index do |v, i|
  tmp << [v, i + 1]
end
tmp.sort! { |x, y| x[0] <=> y[0] }
tmp.pop
puts tmp[-1][1]
