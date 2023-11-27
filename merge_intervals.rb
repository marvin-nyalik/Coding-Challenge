def merge(intervals)
    intervals.sort! { |a, b| a[0] <=> b[0] }
    left, right = 0, 1

    while right < intervals.size
      if intervals[right][0] <= intervals[left][1] && intervals[right][1] >= intervals[left][0]
        flat = [intervals[left], intervals[right]].flatten
        int = [flat.min, flat.max]
        intervals[left] = int
        intervals.delete_at(right)
      else
        left += 1
        right += 1
      end
    end
    intervals
end
