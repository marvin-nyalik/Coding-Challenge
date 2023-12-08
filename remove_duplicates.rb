# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    unique_idx = 0
    count = 0

    (0...nums.length).each do |i|
        index = nums[0...i].index(nums[i])
        next if index
        nums[unique_idx] = nums[i]
        unique_idx += 1
        count += 1
    end

    count
end

# Optimized
def remove_duplicates(nums)
    return 0 if nums.empty?
  
    k = 1  # Initialize the count of unique elements
    (1...nums.length).each do |i|
      if nums[i] != nums[i - 1]
        nums[k] = nums[i]  # Update the array in-place
        k += 1
      end
    end
  
    k  # Return the count of unique elements
end

# using set - Input array is not sorted
# @return {Integer}
def remove_duplicates(nums)
    set = Set.new
    unique_idx = 0

    (0...nums.length).each do |i|
        next if set.member?(nums[i])
        set.add(nums[i])
        nums[unique_idx] = nums[i]
        unique_idx += 1
    end

    unique_idx
end
