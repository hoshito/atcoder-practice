n = gets.chomp.to_i
s = Array.new(n) { gets.chomp.chars }
m = s.map { |row| row.length }.max

(0..m-1).each do |i|
  tmp = []
  (n-1).downto(0).each do |j|
    if s[j][i]
      tmp << s[j][i]
    else
      tmp << "*"
    end
  end
  while tmp.length > 0 && tmp[-1] == "*"
    tmp.pop
  end
  puts tmp.join("")
end

