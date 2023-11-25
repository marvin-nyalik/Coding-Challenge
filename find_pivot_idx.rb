def pivot_index(nums)
    prefix = []
    postfix = []

    prefix_sum = 0
    postfix_sum = 0

    nums.each_with_index do |n, idx|
      prefix_sum += n
      prefix << prefix_sum 
    end

    (nums.length - 1).downto(0).each do |i|
      postfix_sum += nums[i]
      postfix.unshift(postfix_sum)
    end

    nums.each_with_index do |_, idx|
      return idx if prefix[idx] == postfix[idx]
    end
    -1
end
