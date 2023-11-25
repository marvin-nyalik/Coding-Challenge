def largest_altitude(gain)
    current = 0
    max = 0

    gain.each do |g|
      current += g
      max = [current, max].max
    end
    max
end
