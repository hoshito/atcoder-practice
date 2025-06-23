s = gets.chomp.chars
t = gets.chomp.chars
ans = []
t.each_with_index do |c, i|
  if s.empty?
    break
  end
  if s[0] == c
    ans << i + 1
    s.shift
  end
end
puts ans.join(" ")
