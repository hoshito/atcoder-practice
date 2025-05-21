n = gets.chomp.to_i
s = gets.chomp
ans = 0
(0..n-3).each do |i|
  if s[i] == "#" && s[i+1] == "." && s[i+2] == "#"
    ans += 1
  end
end
puts ans
