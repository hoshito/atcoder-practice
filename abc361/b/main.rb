a,b,c,d,e,f = gets.chomp.split(" ").map(&:to_i)
g,h,i,j,k,l = gets.chomp.split(" ").map(&:to_i)

if !(d <= g || j <= a) && !(e <= h || k <= b) && !(f <= i || l <= c)
  puts "Yes"
else
  puts "No"
end
