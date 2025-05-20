abcd = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(14, 0)
abcd.each do |i|
  arr[i] += 1
end
arr.sort!.reverse!
if arr[0] + arr[1] == 4 && arr[0] != 4
  puts "Yes"
else
  puts "No"
end
