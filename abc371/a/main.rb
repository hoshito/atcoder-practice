ab, ac, bc = gets.chomp.split(" ")
if ab == "<"
  if ac == "<"
    if bc == "<"
      puts "B"
    else
      puts "C"
    end
  else
    puts "A"
  end
else
  if ac == "<"
    puts "A"
  else
    if bc == "<"
      puts "C"
    else
      puts "B"
    end
  end
end
