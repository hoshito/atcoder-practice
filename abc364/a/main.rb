n = gets.chomp.to_i
prev = ""
(n - 1).times do
  s = gets.chomp
  if s == "sweet" && s == prev
    puts "No"
    exit
  end
  prev = s
end
puts "Yes"
