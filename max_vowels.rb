def max_vowels(s, k)
  left = 0
  right = k - 1
  count = 0
  vowels = ['a', 'e', 'i', 'o', 'u']
    
  (left..right).each do |i|
    if(vowels.member?(s[i]))
      count += 1
    end
  end
  
  max_count = count
    
  while right < s.length - 1
    left += 1
    right += 1
 
    count -= 1 if vowels.include?(s[left - 1])
    count += 1 if vowels.include?(s[right])
  
    max_count = [max_count, count].max
  end
  max_count
end