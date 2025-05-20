n,d = gets.chomp.split(" ").map(&:to_i)
snakes = Array.new(n) { gets.chomp.split(" ").map(&:to_i) }
(1..d).each do |i|
  puts snakes.map { |s| s[0] * (s[1] + i)}.max
end
