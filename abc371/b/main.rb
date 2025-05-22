n, m = gets.chomp.split(" ").map(&:to_i)
arr = Array.new(n + 1, 0)
m.times do
  a, b = gets.chomp.split(" ")
  a = a.to_i
  if b == "M"
    if arr[a] == 0
      puts "Yes"
    else
      puts "No"
    end 
    arr[a] += 1
  else
    puts "No"
  end
end
