s = gets.chomp
t = gets.chomp
if s == t
  puts 0
  exit
end
length = [s.length, t.length].min
length.times do |i|
  if s[i] != t[i]
    puts i + 1
    exit
  end
end
puts length + 1
