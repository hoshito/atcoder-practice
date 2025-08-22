a, b, c = gets.chomp.split.map(&:to_i).sort

puts (a + b + c) / a.gcd(b).gcd(c) - 3
