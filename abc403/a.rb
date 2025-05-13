n = gets.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
a.each_with_index do |v, i|
  if i % 2 == 0
    ans += v
  end
end

puts ans
