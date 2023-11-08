def find_max(arr)
    max = arr[0]
    arr.each do |num|
      max = num if num > max
    end
    return max
  end
  
  def counting_sort(arr, place)
    n = arr.length
    output = Array.new(n)
    count = Array.new(10, 0)
  
    arr.each do |num|
      count[(num / place) % 10] += 1
    end
  
    (1..9).each do |i|
      count[i] += count[i - 1]
    end
  
    (n - 1).downto(0) do |i|
      digit = (arr[i] / place) % 10
      output[count[digit] - 1] = arr[i]
      count[digit] -= 1
    end
  
    (0...n).each do |i|
      arr[i] = output[i]
    end
  end
  
  def radix_sort(arr)
    max = find_max(arr)
  
    place = 1
    while max / place > 0
      counting_sort(arr, place)
      place *= 10
    end
  end
  
  arr = [170, 45, 75, 90, 802, 24, 2, 66]
  puts "Original Array: #{arr}"
  radix_sort(arr)
  puts "Sorted Array: #{arr}"
  