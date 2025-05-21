a = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(5, 0)
a.each do |i|
  arr[i] += 1
end
ans = 0
arr.each do |i|
  ans += i / 2
end
puts ans
