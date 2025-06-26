n = gets.chomp.to_i

def test(i)
  if i == 0
    return ["#"]
  end
  
  tmp = test(i - 1)
  result = []

  tmp.each do |row|
    result << (row + row + row)
  end

  tmp.each do |row|
    result << (row + (".") * (3 ** (i - 1)) + row)
  end

  tmp.each do |row|
    result << (row + row + row)
  end

  return result
end

ans = test(n)
ans.each do |row|
  puts row
end
