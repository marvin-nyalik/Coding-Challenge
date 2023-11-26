def is_subsequence(s, t)
    return true if s.empty?
    return false if t.empty?
    s_idx = 0
    t_idx = 0

    while t_idx < t.length
      if s[s_idx] == t[t_idx]
        s_idx += 1
        return true if s_idx == s.length
      end

      t_idx += 1
    end
    false
end
