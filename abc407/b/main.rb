x, y = gets.chomp.split(" ").map(&:to_i)
count = 0
(1..6).each do |i|
  (1..6).each do |j|
    if i + j < x && (i - j).abs < y
      count += 1
    end
  end
end
puts (36 - count).fdiv(36)
