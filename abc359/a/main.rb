n = gets.chomp.to_i
ans = 0
n.times do
  s = gets.chomp
  if s == "Takahashi"
    ans += 1
  end
end
puts ans
