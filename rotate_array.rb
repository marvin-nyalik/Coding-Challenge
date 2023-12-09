def rotate(nums, k)
    return nums if k.zero?
    while k > 0
        last = nums.pop()
        nums.unshift(last)
        k -= 1
    end
    nums
end

# Optimized
def rotate(nums, k)
    return nums if k.zero?
    k %= nums.size
    nums.unshift(*nums.pop(k))
end