n = gets.chomp.to_i
a_c_arr = []
n.times do |i|
  a, c = gets.chomp.split(" ").map(&:to_i)
  a_c_arr << [a, c, i + 1]
end

# c昇順, a降順でソート
a_c_arr.sort! do |(a1, c1, i1), (a2, c2, i2)|
  if c1 == c2
    a2 <=> a1
  else
    c1 <=> c2
  end
end

ans = []
max_a = 0
a_c_arr.each do |a, c, i|
  if a > max_a
    ans << i
    max_a = a
  end
end

puts ans.size
puts ans.sort.join(" ")
