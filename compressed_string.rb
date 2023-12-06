# @param {Character[]} chars
# @return {Integer}
def compress(chars)
    write_index = 0
    current_char = chars[0]
    count = 1

    for i in 1...chars.length
        if chars[i] == current_char
            count += 1
        else
            chars[write_index] = current_char
            write_index += 1

            if count > 1
                count.to_s.chars.each do |digit|
                    chars[write_index] = digit
                    write_index += 1
                end
            end

            current_char = chars[i]
            count = 1
        end
    end

    chars[write_index] = current_char
    write_index += 1

    if count > 1
        count.to_s.chars.each do |digit|
            chars[write_index] = digit
            write_index += 1
        end
    end

    write_index
end
