def getsAndReturnStr
  gets.chomp
end

def getsFillingRate(str)
  if str[0] == "t" && str[0] == str[-1] && str.length >= 3
    return (str.count("t") - 2).fdiv(str.length - 2)
  else
      return 0
  end
end

s = getsAndReturnStr()

ans = 0
(0..(s.length-1)).each do |start_index|
  (0..(s.length-1)).each do |end_index|
    fill_rate = getsFillingRate(s[start_index..end_index])
    ans = fill_rate if fill_rate > ans
  end
end
puts ans
