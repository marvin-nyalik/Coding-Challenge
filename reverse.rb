def reverseStr(str)
  # Lets make use of the fact that Ruby Strings are mutable by default
  left = 0
  right = str.size - 1

  # in a programming language where we have immutable strings we can instead
  # convert the string into an array of xtrs first

  while left < right
    # So we can modify the string directly 
    str[left], str[right] = str[right], str[left]
    left += 1
    right -= 1
  end
  # ...and return the string
  str
end

puts reverseStr("PHD") #DHP
puts reverseStr("Hello") #olleH
puts reverseStr("Hi") #iH
