def getsAndReturnInt
  gets.chomp.to_i
end

def getsAndReturnStr
  gets.chomp
end

n = getsAndReturnInt()
s = getsAndReturnStr()

if s[n-3..] == "tea"
  puts "Yes"
else
  puts "No"
end
