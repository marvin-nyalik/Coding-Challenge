# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  nonzero_idx = 0
  nums.each_with_index do |n, idx|
      if n != 0
          nums[idx], nums[nonzero_idx] = nums[nonzero_idx], nums[idx]
          nonzero_idx += 1
      end
  end
  nums
end
