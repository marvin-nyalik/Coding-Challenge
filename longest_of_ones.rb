def longest_subarray(nums)
    left, zero_count, longest = 0, 0, 0
    # traverse the array and count zeros
    nums.each_with_index do |num, right|
      zero_count += 1 if num == 0

      while zero_count > 1
        zero_count -= 1 if nums[left] == 0
        left += 1
      end
      longest = [longest, right - left].max
    end
    longest
    # while zero count == 1, longest = current index
    # take the count [1,1,0,1] = 3, update the longest
end
