n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
max = 10 ** k
ans = 1
a.each do |x|
  ans *= x
  if ans >= max
    ans = 1
  end
end
puts ans
