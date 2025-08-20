n = gets.to_i
s = gets.chomp.chars

slash_index = []
s.each_with_index do |c, i|
  if c == "/"
    slash_index << i
  end
end

ans = 1
slash_index.each do |i|
  di = 1
  while i - di >= 0 && i + di < n do
    unless s[i - di] == "1" && s[i + di] == "2"
      break
    end
    di += 1
  end
  len = (di - 1) * 2 + 1
  ans = len if len > ans
end
puts ans
