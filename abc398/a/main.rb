n = gets.chomp.to_i

if n % 2 == 0
  x = "-" * ((n - 2) / 2)
  puts x + "==" + x
else
  x = "-" * ((n - 1) / 2)
  puts x + "=" + x
end
