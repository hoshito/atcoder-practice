n = gets.chomp.to_i
ans = []
n.times do
  ans << ("#" * n).split("")
end

status = "."
(1..(n - 1)/2).each do |i|
  (n - i * 2).times do |j|
    (n - i * 2).times do |k|
      ans[j + i][k + i] = status
    end
  end
  status = status == "#" ? "." : "#"
end

ans.each do |a|
  puts a.join
end
