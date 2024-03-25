# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_volume = 0
  left = 0
  right = height.size - 1

  while left < right
      length = right - left
      c_height = [height[left], height[right]].min
      volume = length * c_height
      max_volume = [volume, max_volume].max

      if height[left] < height[right]
          left += 1
      else
          right -= 1
      end
  end
  max_volume
end