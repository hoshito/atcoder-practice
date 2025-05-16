s1, s2 = gets.chomp.split(" ")
if s1 == "sick"
  if s2 == "sick"
    puts 1
  else
    puts 2
  end
else
  if s2 == "sick"
    puts 3
  else
    puts 4
  end
end
