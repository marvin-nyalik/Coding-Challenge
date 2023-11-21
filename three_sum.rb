def three_sum(array, target)
  res = []
  array.sort!
  (0..array.size - 3).each do |i|
    next if i > 0 && array[i] == array[i - 1]

    left, right = i + 1, array.size - 1

    while left < right
      cur_sum = array[i] + array[left] + array[right]
      if cur_sum == target
        res.push([array[i], array[left], array[right]])

        left += 1
        right -= 1
      elsif cur_sum < target
        left += 1
      else 
        right -= 1
      end
    end
  end
  res
end

p three_sum([-1, 0, 1, 2, -1, -4], 0) #[[-1, -1, 2], [-1, 0, 1]]
