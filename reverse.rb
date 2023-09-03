def reverseStr(str)
  left = 0
  right = str.size - 1

  while left < right
    str[left], str[right] = str[right], str[left]
    left += 1
    right -= 1
  end
  str
end

puts reverseStr("PHD")
