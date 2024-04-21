def can_place_flowers(flowerbed, n)
    count = 0
    i = 0
  
    while i < flowerbed.length
      if flowerbed[i] == 0 &&
         (i == 0 || flowerbed[i - 1] == 0) &&
         (i == flowerbed.length - 1 || flowerbed[i + 1] == 0)
        flowerbed[i] = 1
        count += 1
      end
      break if count >= n
      i += 1
    end
  
    count >= n
end

  