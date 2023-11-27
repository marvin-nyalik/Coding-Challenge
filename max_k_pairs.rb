def max_operations(nums, k)
    nums.sort!
    left, right, count = 0, nums.size - 1, 0

    while left < right
      cur_sum = nums[left] + nums[right]
      if cur_sum == k
        count += 1 
        left += 1
        right -= 1
      end
      
      if cur_sum > k
        right -= 1
      elsif cur_sum < k
        left += 1
      end
    end
    count
end
