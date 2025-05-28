n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
k.times do
  tmp = a.pop
  a.unshift(tmp)
end
puts a.join(" ")
