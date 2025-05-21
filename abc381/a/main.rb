n = gets.chomp.to_i
s = gets.chomp

if n % 2 == 0
  puts "No"
  exit
end

m = (n - 1) / 2
ans = "#{"1"*m}/#{"2"*m}"
if s == ans
  puts "Yes"
else
  puts "No"
end
