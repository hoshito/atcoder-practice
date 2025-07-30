n, q = gets.chomp.split.map(&:to_i)
a_arr = gets.chomp.split.map(&:to_i)

ans = 0
space = Array.new(n + 2, 0)
a_arr.each do |a|
  if space[a - 1] == space[a + 1]
    if space[a] == space[a - 1]
      ans += 1
    else
      ans -= 1
    end
  end
  space[a] = !space[a]
  puts ans
end
