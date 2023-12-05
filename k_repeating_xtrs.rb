# @param {String} s
# @param {Integer} k
# @return {Integer}
def k_repeating_chars(s, k)
    return 0 if s.nil? || s.empty? || k <= 0

    longest = 0
    left = 0
    right = 0
    char_counts = Array.new(26, 0)
    repeating = 0

    while right < s.length
        char_index = s[right].ord - 'a'.ord
        char_counts[char_index] += 1

        if char_counts[char_index] == 2
            repeating += 1
        end

        while repeating > k
            left_char_index = s[left].ord - 'a'.ord
            char_counts[left_char_index] -= 1

            if char_counts[left_char_index] == 1
                repeating -= 1
            end

            left += 1
        end

        longest = [longest, right - left + 1].max

        right += 1
    end

    longest
end

puts k_repeating_chars('abbacddb', 2) # Output: 6
