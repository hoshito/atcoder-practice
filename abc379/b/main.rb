n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("X")

ans = 0
s.each do |si|
  ans += si.length / k
end
puts ans
