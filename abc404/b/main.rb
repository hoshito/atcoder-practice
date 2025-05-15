n = gets.chomp.to_i
s = []
t = []
n.times do
  s << gets.chomp.split("")
end
n.times do
  t << gets.chomp.split("")
end

def check(s, t, n)
  cnt = 0
  n.times do |i|
    n.times do |j|
      if s[i][j] != t[i][j]
        cnt += 1
      end
    end
  end
  return cnt
end

ans = check(s, t, n)

s = s.transpose.map(&:reverse)
ans = [ans, check(s, t, n) + 1].min

s = s.transpose.map(&:reverse)
ans = [ans, check(s, t, n) + 2].min

s = s.transpose.map(&:reverse)
ans = [ans, check(s, t, n) + 3].min

puts ans
