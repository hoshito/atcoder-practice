n = gets.chomp.to_i
a_arr = gets.chomp.split.map(&:to_i)
x = gets.chomp.to_i
a_arr.each do |a|
  if a == x
    puts "Yes"
    exit
  end
end
puts "No"
