h, w, x, y = gets.chomp.split(" ").map(&:to_i)
x -= 1
y -= 1
s = Array.new(h) { gets.chomp.chars }
t = gets.chomp.chars
ans = 0
t.each do |c|
  if c == "U" && x - 1 >= 0 && s[x - 1][y] != "#"
    if s[x - 1][y] == "@"
      s[x - 1][y] = "."
      ans += 1
    end
    x -= 1
  elsif c == "D" && x + 1 < h && s[x + 1][y] != "#"
    if s[x + 1][y] == "@"
      s[x + 1][y] = "."
      ans += 1
    end
    x += 1
  elsif c == "L" && y - 1 >= 0 && s[x][y - 1] != "#"
    if s[x][y - 1] == "@"
      s[x][y - 1] = "."
      ans += 1
    end
    y -= 1
  elsif c == "R" && y + 1 < w && s[x][y + 1] != "#"
    if s[x][y + 1] == "@"
      s[x][y + 1] = "."
      ans += 1
    end
    y += 1
  end
end
puts "#{x + 1} #{y + 1} #{ans}"
