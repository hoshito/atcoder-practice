n = gets.chomp.to_i
t = gets.chomp
a = gets.chomp

n.times do |i|
  if t[i] == a[i] && t[i] == "o"
    puts "Yes"
    exit
  end
end
puts "No"
