s = gets.chomp

ans = []
w_count = 0
s.each_char do |c|
  if c == "W"
    w_count += 1
  elsif c == "A"
    ans << "A"
    ans << "C" * w_count
    w_count = 0
  else
    ans << "W" * w_count
    ans << c
    w_count = 0
  end
end
ans << "W" * w_count
puts ans.join("")
