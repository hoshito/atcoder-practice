s = ["o"] + gets.chomp.split("") + ["i"]

ans = 0
s.each_cons(2) do |a, b|
  if a == b
    ans += 1
  end
end
puts ans
