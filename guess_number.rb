def guessNumber(n)
    left = 1
    right = n

    while left <= right
        mid = left + (right - left) / 2
        result = guess(mid)

        return mid if result == 0

        right = mid -= 1 if result < 0 
        
        left = mid += 1 if result > 0 
    end

end
