h, w, d = gets.chomp.split(" ").map(&:to_i)
s = Array.new(h) { gets.chomp.chars }

arr = []
h.times do |i|
  w.times do |j|
    if s[i][j] == "."
      arr << [i, j]
    end
  end
end

ans = 0
l = arr.length
(0..(l-2)).each do |i|
  ((i+1)..(l-1)).each do |j|
    i1, j1 = arr[i]
    i2, j2 = arr[j]
    tmpans = 0
    h.times do |i|
      w.times do |j|
        if s[i][j] == "." && ((i1 - i).abs + (j1 - j).abs <= d || (i2 - i).abs + (j2 - j).abs <= d)
          tmpans += 1
        end
      end
    end
    if tmpans > ans
      ans = tmpans
    end
  end
end
puts ans

