n, m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i)
b_arr = gets.chomp.split(" ").map(&:to_i)

a_arr = a_arr.map { |a| [a, "a"] }
b_arr = b_arr.map { |b| [b, "b"] }
c_arr = a_arr + b_arr
c_arr.sort! { |x, y| x[0] <=> y[0] }

c_arr.each_cons(2) do |c1, c2|
  if c1[1] == "a" && c1[1] == c2[1]
    puts "Yes"
    exit
  end
end
puts "No"

