n, c1, c2 = gets.chomp.split(" ")
s = gets.chomp.chars
n.to_i.times do |i|
  if s[i] != c1
    s[i] = c2
  end
end
puts s.join
