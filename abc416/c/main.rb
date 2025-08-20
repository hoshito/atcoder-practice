n, k, x = gets.chomp.split.map(&:to_i)
s_arr = []
n.times do
  s_arr << gets.chomp
end

class CombinationEnumerator
  def initialize(arr)
    @arr = arr
  end

  def enumerate(length)
    @target_length = length
    @result = []
    dfs([])
    @result
  end

  private def dfs(current_combination)
    if current_combination.size == @target_length
      @result << current_combination.dup
      return
    end
    
    @arr.each do |element|
      # dfs(current_combination + [element])と同じ
      # push/popの方が使用メモリが小さい
      current_combination.push(element)
      dfs(current_combination)
      current_combination.pop
    end
  end 
end

enumerator = CombinationEnumerator.new(s_arr)
ans = enumerator.enumerate(k).map(&:join)

ans.sort!
puts ans[x - 1]
