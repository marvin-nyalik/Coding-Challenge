def kids_with_candies(candies, extra_candies)
    arr = Array.new(candies.size, false)
    candies.each_with_index do |c, idx|
        if (c + extra_candies) >= candies.max
            arr[idx] = true
        else
            arr[idx] = false
        end
    end
    arr
end
