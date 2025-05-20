n, m = gets.chomp.split(" ").map(&:to_i)
s = Array.new(n) { gets.chomp.split("") }
t = Array.new(m) { gets.chomp.split("") }

(0..n-m).each do |a|
  (0..n-m).each do |b|
    flag = true
    (0..m-1).each do |i|
      (0..m-1).each do |j|
        if s[a+i][b+j] != t[i][j]
          flag = false
          break
        end
      end
      break unless flag
    end
    if flag
      puts [a + 1, b + 1].join(" ")
      exit
    end
  end
end
