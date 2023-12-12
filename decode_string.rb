def decode_string(s)
    stack = []
  
    s.each_char do |ch|
      if ch != "]"
        stack << ch
      else
        subs = ''
        while stack[-1] != '['
          subs = stack.pop + subs
        end
        stack.pop
  
        int_s = ''
        while !stack.empty? && stack[-1].match?(/\d/)
          int_s = stack.pop + int_s
        end
  
        stack << subs * int_s.to_i
      end
    end
  
    stack.join('')
end
  