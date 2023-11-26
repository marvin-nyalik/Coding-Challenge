def move_zeroes(nums)
    return nums if nums.size <= 1
    non_zero_idx = 0
    nums.each_with_index do |n, idx|
      if n != 0
        nums[idx], nums[non_zero_idx] = nums[non_zero_idx], nums[idx]
        non_zero_idx += 1
      end
    end
    nums
end
