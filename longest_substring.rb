# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return 0 if s.nil? || s.empty?

    longest = 0
    left = 0
    right = 1

    while right < s.length
        index = s[left...right].index(s[right])

        if index
            left += index + 1
        else
            longest = [longest, right - left + 1].max
        end

        right += 1
    end

    longest
end