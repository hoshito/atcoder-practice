def read_int_matrix(n)
  n.times.map { read_int_array }
end

def read_int_array
  gets.chomp.split.map(&:to_i)
end

def read_int
  gets.chomp.to_i
end

def read_string
  gets.chomp
end
