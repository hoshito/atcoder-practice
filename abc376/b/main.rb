n, q = gets.chomp.split(" ").map(&:to_i)
l = 1
r = 2
ans = 0
q.times do
  h, t = gets.chomp.split(" ")
  t = t.to_i
  if h == "L"
    if (l < r && r < t) || (t < r && r < l)
      ans += n - (l - t).abs
    else
      ans += (l - t).abs
    end
    l = t 
  else
    if (r < l && l < t) || (t < l && l < r)
      ans += n - (r - t).abs
    else
      ans += (r - t).abs
    end 
    r = t
  end
end
puts ans
