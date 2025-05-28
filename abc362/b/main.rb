xa, ya = gets.chomp.split(" ").map(&:to_i)
xb, yb = gets.chomp.split(" ").map(&:to_i)
xc, yc = gets.chomp.split(" ").map(&:to_i)

a = (xa - xb) ** 2 + (ya - yb) ** 2
b = (xb - xc) ** 2 + (yb - yc) ** 2
c = (xc - xa) ** 2 + (yc - ya) ** 2

if a + b == c || b + c == a || c + a == b
  puts "Yes"
else
  puts "No"
end
