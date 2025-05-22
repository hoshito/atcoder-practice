s = gets.chomp
hash = {}
s.each_char.each_with_index do |c, i|
  hash[c] = i
end
index = hash["A"]
ans = 0
("B".."Z").each do |c|
  ans += (index - hash[c]).abs
  index = hash[c]
end
puts ans
