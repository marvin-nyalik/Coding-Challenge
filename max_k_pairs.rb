def max_operations(nums, k)
  operations = 0
  nums.sort!
  left = 0
  right = nums.size - 1

  while left < right
      sum = nums[left] + nums[right]
      right -= 1 if sum > k
      left += 1 if sum < k
      if sum == k
          left += 1
          right -= 1
          operations += 1
      end
  end
  operations
end