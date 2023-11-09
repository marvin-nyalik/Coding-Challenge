def binary_search(arr, target)
    low = 0
    high = arr.length - 1
  
    while low <= high
      mid = (low + high) / 2
  
      if arr[mid] == target
        return mid
      elsif arr[mid] < target
        low = mid + 1 
      else
        high = mid - 1 
      end
    end
  
    return -1
  end
  
  arr = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
  target = 14
  result = binary_search(arr, target)
  
  if result != -1
    puts "Element found at index #{result}"
  else
    puts "Element not found in the array"
  end
  