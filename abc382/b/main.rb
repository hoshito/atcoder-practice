n, d = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.chars
idx = []
s.each_with_index do |c, i|
  if c == "@"
    idx << i
  end
end

ans = Array.new(n, ".")
(0..(idx.length - d - 1)).each do |i|
  ans[idx[i]] = "@"
end
puts ans.join
