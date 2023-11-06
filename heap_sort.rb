def heapify(arr, n, i)
    largest = i
    left = 2 * i + 1
    right = 2 * i + 2
  
    if left < n && arr[left] > arr[largest]
      largest = left
    end
  
    if right < n && arr[right] > arr[largest]
      largest = right
    end
  
    if largest != i
      arr[i], arr[largest] = arr[largest], arr[i]
      heapify(arr, n, largest)
    end
  end
  
  def heap_sort(arr)
    n = arr.length
  
    # Build a max heap
    (n / 2 - 1).downto(0) do |i|
      heapify(arr, n, i)
    end
  
    # One by one extract elements
    (n - 1).downto(0) do |i|
      arr[0], arr[i] = arr[i], arr[0] # Move current root to end
      heapify(arr, i, 0) # call max heapify on the reduced heap
    end
    arr
  end
  
  # Example usage:
  arr = [12, 11, 13, 5, 6, 7]
  puts "Original array: #{arr}"
  sorted_arr = heap_sort(arr)
  puts "Sorted array: #{sorted_arr}"
  