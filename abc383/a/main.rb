n = gets.chomp.to_i
arr = Array.new(n) { gets.chomp.split(" ").map(&:to_i) }
ans = 0
arr.each_cons(2) do |a, b|
  t1, v1 = a
  t2, v2 = b
  ans += v1
  ans -= (t2 - t1)
  if ans < 0
    ans = 0
  end
end
puts ans + arr[-1][1]
