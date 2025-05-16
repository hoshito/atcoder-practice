n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

a.each_cons(2) do |x, y|
  if x >= y
    puts "No"
    exit
  end
end
puts "Yes"
