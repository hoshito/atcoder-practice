scol = Set.new
srow = Set.new
8.times do |i|
  s = gets.chomp
  s.each_char.with_index do |c, j|
    if c == "#"
      scol.add(j)
      srow.add(i)
    end
  end
end

ans = 0
8.times do |i|
  8.times do |j|
    if !srow.include?(i) && !scol.include?(j)
      ans += 1
    end
  end
end
puts ans
