# @param {String} s
# @return {String}
def remove_stars(s)
    stack = []
    s.each_char do |ch|
        unless ch == "*"
            stack << ch
        else
            stack.pop
        end
    end
    s = stack.join('')
    s
end
