n, a, b = gets.chomp.split.map(&:to_i)
s = gets.chomp
puts s[a..(n - 1 - b)]
