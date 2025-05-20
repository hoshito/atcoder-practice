x = gets.chomp.to_i
(1..30).each do |i|
  if x % i != 0
    puts i - 1
    break
  end
  x /= i
end
