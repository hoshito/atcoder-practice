x = gets.chomp.split("")
comma = x.index(".") ? true : false
while true do
  if x[-1] != "0"
    break
  end
  if x[-1] == "0"
    if !comma
      break
    end
    x.pop
  end
  if x[-1] == "."
    x.pop
    comma = false
  end
end
puts x.join("")
