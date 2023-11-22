def min_sub_array_len(target, nums)
  return 0 if nums.empty?
  
  right = 0
  left = 0
  cur_sum = 0
  min_len = Float::INFINITY
  
  while right < nums.size
    cur_sum += nums[right]
    right += 1
  
    while cur_sum >= target
      min_len = [min_len, right - left].min
      if min_len == 1
        return 1
      end
      cur_sum -= nums[left]
      left += 1
    end
  end
  
  return min_len == Float::INFINITY ? 0 : min_len
end
