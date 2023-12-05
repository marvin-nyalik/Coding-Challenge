def find_min_index(arr)
    min_index = 0
    arr.each_with_index do |val, index|
      next if val.nil? || val.zero?
      min_index = index if min_index.nil? || val < arr[min_index]
    end
    min_index
  end
  
  def longest_substring(s, k)
    return 0 if s.nil? || s.empty?
  
    counter = Array.new(26, 0)
  
    s.each_char { |ch| counter[ch.ord - 'a'.ord] += 1 }
  
    least_frequent_char_index = find_min_index(counter)
  
    return s.length if least_frequent_char_index.nil? || counter[least_frequent_char_index] >= k
  
    least_frequent_char = (least_frequent_char_index + 'a'.ord).chr
    subproblems = s.split(least_frequent_char)
  
    subproblems.map { |subproblem| longest_substring(subproblem, k) }.max
  end
  
  