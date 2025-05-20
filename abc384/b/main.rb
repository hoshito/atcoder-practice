n, r = gets.chomp.split(" ").map(&:to_i)
n.times do
  d, a = gets.chomp.split(" ").map(&:to_i)
  if d == 1 && 1600 <= r && r <= 2799
    r += a
  elsif d == 2 && 1200 <= r && r <= 2399
    r += a
  end
end
puts r
