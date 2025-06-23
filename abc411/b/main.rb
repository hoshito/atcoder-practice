n = gets.chomp.to_i
d_arr = gets.chomp.split(" ").map(&:to_i)

(0..n-2).each do |i|
  d = 0
  ans = []
  (i+1..n-1).each do |j|
    d += d_arr[j - 1]
    ans << d
  end
  puts ans.join(" ")
end
