def remove_duplicates(nums)
    return nums.length if nums.length <= 2

    slow = 2
    (2...nums.length).each do |fast|
        if nums[fast] != nums[slow-2]
            nums[slow] = nums[fast]
            slow += 1
        end
    end
    
    slow
end