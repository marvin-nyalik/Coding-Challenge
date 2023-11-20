def two_sum(array, target)
  sorted_array = array.sort!
  i,j = 0, array.length - 1

  while i < j
    return [i,j] if sorted_array[i] + sorted_array[j] == target
    if sorted_array[i] + sorted_array[j] > target
      j -= 1
    else
      i += 1
    end
  end
  -1
end

p two_sum([2,7,8,11], 9)
