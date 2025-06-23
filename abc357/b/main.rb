s = gets.chomp
upcases = []
downcases = []
s.each_char do |c|
  if c == c.upcase
    upcases << c
  else
    downcases << c
  end
end
if upcases.length > downcases.length
  puts s.upcase
else
  puts s.downcase
end

