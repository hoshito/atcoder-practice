a, b = gets.chomp.split(" ").map(&:to_i)
ans = Set.new(1..3)
ans.delete(a)
ans.delete(b)
if ans.length == 1
  puts ans.first
else
  puts -1
end
