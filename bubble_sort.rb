def bubble_sort(array)
  (0..array.size - 1).each do |i|
    (0..array.size - 2 - i).each do |j|
      if array[j] > array[j + 1]
        array[j], array[j + 1] = array[j + 1], array[j]
      end
    end
  end
  array
end

p bubble_sort([2,1,5,4,3])
p bubble_sort([5, 3, 8, 1, 2])
