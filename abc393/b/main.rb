s = gets.chomp.split("")

cnt = 0
(0..s.length - 3).each do |i|
  (i + 1..s.length - 2).each do |j|
    (j + 1..s.length - 1).each do |k|
      if j - i == k - j && s[i] == "A" && s[j] == "B" && s[k] == "C"
        cnt += 1
      end
    end
  end
end
puts cnt
