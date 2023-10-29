def quicksort(array, low = 0, high = array.size - 1)
  if low < high
    pivot_idx = partition(array, low, high)
    quicksort(array, low, pivot_idx - 1)
    quicksort(array, pivot_idx + 1, high)
  end
  array
end


def partition(array, lo, hi)
  pivot = array[hi]
  i = lo - 1

  (lo...hi).each do |j|
    if array[j] < pivot
      i += 1
      array[i], array[j] = array[j], array[i]
    end
  end

  array[hi], array[i + 1] = array[i + 1], array[hi]
  i + 1
end

p quicksort([3,2,12,6,45,15])
