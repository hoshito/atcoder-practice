n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
a.each_cons(3) do |x, y, z|
  if x == y && y == z
    puts "Yes"
    exit
  end
end
puts "No"
