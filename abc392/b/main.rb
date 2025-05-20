n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
ans = Set.new
(1..n).each do |i|
  ans.add(i)
end
a.each do |x|
  ans.delete(x)
end
puts ans.size
puts ans.to_a.sort.join(" ")
