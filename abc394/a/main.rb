s = gets.chomp
cnt = 0
s.each_char do |c|
  if c == "2"
    cnt += 1  
  end
end
puts "2" * cnt

