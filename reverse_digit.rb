# @param {Integer} x
# @return {Integer}

def reverse(x)
    int_max = 2**31 - 1
    int_min = -2**31

    sign = x < 0 ? -1 : 1
    x = x.abs

    reverse = 0
    while x != 0
        digit = x % 10
        if reverse > (int_max - digit) / 10 || reverse < (int_min + digit) / 10
            return 0
        end
        reverse = reverse * 10 + digit
        x /= 10
    end
    
    reverse * sign
end
