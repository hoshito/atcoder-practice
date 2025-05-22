m = gets.chomp.to_i
arr = []
tmp = 1
(0..10).each do |i|
  arr << [tmp, i]
  tmp *= 3
end
arr.reverse!

ans = []
while m != 0 do
  arr.each do |a, i|
    if a <= m
      ans << i
      m -= a
      break
    end
  end
end
puts ans.length
puts ans.join(" ")
