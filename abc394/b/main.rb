n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp
end

arr.sort! do |a, b|
  a.length <=> b.length
end
puts arr.join
