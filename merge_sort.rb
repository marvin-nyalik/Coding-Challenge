def merge_sort(array)
  return array if array.size <= 1
  
  mid = array.size / 2
  left = array[0...mid]
  right = array[mid..-1]

  left_a = merge_sort(left)
  right_a = merge_sort(right)

  merge(left_a, right_a)
end

def merge(l, r)
  i, j = 0, 0
  result = []

  while i < l.size && j < r.size
    if l[i] <= r[j]
      result << l[i]
      i += 1
    else
      result << r[j]
      j += 1
    end
  end

  while i < l.size
    result << l[i]
    i += 1
  end

  while j < r.size
    result << r[j]
    j += 1
  end
  result
end

p(merge_sort([3,1,12,7,9,15]))

# expected output: [1,3,7,9,12,15]
