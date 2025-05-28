n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ans = 0
(1..n).each do |i|
  if a.rindex(i) - a.index(i) == 2
    ans += 1
  end
end
puts ans
