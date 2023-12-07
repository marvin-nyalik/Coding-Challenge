# @param {String} s
# @return {String}
def reverse_vowels(s)
    vowels = Set.new(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'])

    left, right = 0, s.length - 1

    while left < right
        l_vowel = false
        r_vowel = false

        until l_vowel || left >= right
          if vowels.member?(s[left])
             l_vowel = true
          else
             left += 1
          end
        end

        until r_vowel || left >= right
            if vowels.member?(s[right])
                r_vowel = true
            else
                right -= 1
            end
        end

        if r_vowel && l_vowel
            s[left], s[right] = s[right], s[left]
            left += 1
            right -= 1
        end
    end
    s
end

# Optimized
def reverse_vowels(s)
    vowels_regex = /[aeiouAEIOU]/

    left, right = 0, s.length - 1

    while left < right
        l_vowel = s[left].match?(vowels_regex)
        r_vowel = s[right].match?(vowels_regex)

        if l_vowel && r_vowel
            s[left], s[right] = s[right], s[left]
            left += 1
            right -= 1
        end

        left += 1 unless l_vowel
        right -= 1 unless r_vowel
    end

    s
end
