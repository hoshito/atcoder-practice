n = gets.chomp.to_i
qr = Array.new(n) { gets.chomp.split(" ").map(&:to_i) }
qq = gets.chomp.to_i
qq.times do
  t, d = gets.chomp.split(" ").map(&:to_i)
  q, r = qr[t - 1]
  p = [(d - r).fdiv(q).ceil, 0].max
  puts p * q + r
end
