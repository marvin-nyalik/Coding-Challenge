def selection_sort(array)
  (0..array.size - 2).each do |i|
    min_index = i
    (i + 1.. array.size - 1).each do |j|
      min_index = j if array[j] < array[min_index]
    end
    array[min_index], array[i] = array[i], array[min_index] if i != min_index
  end
  array
end

p selection_sort([64, 25, 12, 22, 11])
