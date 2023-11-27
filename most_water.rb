def max_area(height)
    left, right = 0, height.size - 1
    max_vol = 0

    while left < right
      cur_height = [height[left], height[right]].min
      cur_length = right - left

      cur_vol = cur_height * cur_length
      max_vol = [max_vol, cur_vol].max
      if height[left] < height[right]
        left += 1
      else
        right -= 1
      end
    end
    max_vol
end