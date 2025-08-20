n, l, r = gets.chomp.split.map(&:to_i)
s = gets.chomp

if s[l-1..r-1] == "o" * (r - l + 1)
  puts "Yes"
else
  puts "No"
end

