n = gets.chomp.to_i
p = gets.chomp.split(" ").map(&:to_i)
r = 1

rank = Array.new(n, 0)

while true do
  k = 0
  x = p.max
  if x == 0
    break
  end
  n.times do |i|
    if p[i] == x
      rank[i] = r
      k += 1
      p[i] = 0
    end
  end
  r += k
end

rank.each do |i|
  puts i
end
