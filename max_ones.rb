def longest_ones(nums, k)
    left, max_len = 0, 0
    zero_count = 0
    
    nums.each_with_index do |num, idx|
      zero_count += 1 if num == 0

      while zero_count > k
        zero_count -= 1 if nums[left] == 0
        left += 1
      end
      max_len = [max_len, idx - left + 1].max
    end

    max_len
    
end