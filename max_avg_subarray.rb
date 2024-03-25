# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  left = 0
  right = k - 1
  sum = nums.slice(left, k).sum
  avg = sum.to_f / k
  while right < nums.size - 1 && left <= right
      sum -= nums[left]
      sum += nums[right + 1]
      new_avg = sum.to_f / k
      avg = [new_avg, avg].max
      left += 1
      right += 1
  end
  avg 
end
