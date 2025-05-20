x = gets.chomp.to_i
ans = 0
(1..9).each do |i|
  (1..9).each do |j|
    if i * j != x
      ans += i * j
    end
  end
end
puts ans
