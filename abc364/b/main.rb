h, w = gets.chomp.split(" ").map(&:to_i)
si, sj = gets.chomp.split(" ").map(&:to_i)
si -= 1
sj -= 1
maze = Array.new(h) { gets.chomp.chars }
x = gets.chomp.chars
x.each do |c|
  if c == "L"
    if sj >= 1 && maze[si][sj - 1] != "#"
      sj -= 1
    end
  elsif c == "R"
    if sj < w - 1 && maze[si][sj + 1] != "#"
      sj += 1
    end
  elsif c == "U"
    if si >= 1 && maze[si - 1][sj] != "#"
      si -= 1
    end
  elsif c == "D"
    if si < h - 1 && maze[si + 1][sj] != "#"
      si += 1
    end
  end
end
puts "#{si + 1} #{sj + 1}"
