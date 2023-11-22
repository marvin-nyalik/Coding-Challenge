def find_max_average(nums, k)
  left = 0
  right = k - 1
  sum = 0
  max_avg = -Float::INFINITY
  
  (left..right).each do |i|
    sum += nums[i]
  end
  
  while right < nums.size
    avg = sum / k.to_f
    max_avg = [max_avg, avg].max
    sum -= nums[left]
    left += 1
    right += 1
  
    sum += nums[right] if right < nums.size
  end
 
  return max_avg
end
