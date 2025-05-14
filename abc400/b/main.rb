n, m = gets.chomp.split.map(&:to_i)
x = 1
tmp = 1
m.times do
  tmp*= n
  x += tmp
  if x > 10**9
    puts "inf"
    exit
  end
end
if x > 10**9
  puts "inf"
  exit
end
puts x
