n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

a.each_cons(2) do |x, y|
  if x * a[1] != y * a[0]
    puts "No"
    exit
  end
end
puts "Yes"
