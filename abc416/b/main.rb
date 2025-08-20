s = ["#"] + gets.chomp.chars + ["#"]
n = s.length

t = []
(2..n-1).each do |i|
  if s[i] == "#" && s[i-1] == "."
    t << "o"
  else
    t << s[i-1]
  end  
end
puts t.join("")
