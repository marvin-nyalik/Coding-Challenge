def isPalindrome(str)
  str.downcase!
  left = 0
  right = str.size - 1

  while left <= right
    return false if str[left] != str[right]
    left += 1
    right -= 1
  end

  return true
end

puts isPalindrome("Racecar")
puts isPalindrome("isiy")
puts isPalindrome("isi")