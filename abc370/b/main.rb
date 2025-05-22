n = gets.chomp.to_i
arr = Array.new(n) { gets.chomp.split(" ").map(&:to_i) }
ans = 1
(1..n).each do |i|
  if ans >= i
    ans = arr[ans - 1][i - 1]
  else
    ans = arr[i -  1][ans - 1]
  end
end
puts ans
