def gcd(str1, str2)
  return "" unless str1.start_with?(str2) || str2.start_with?(str1)

  len1 = str1.length
  len2 = str2.length
  len = [len1, len2].min
  gcd = String('')

  (1...len).each do |i|
    if len1 % i == 0 && len2 % 2 == 0
      substr = str1[0...i]
      if str1 == substr * (len1 / i) && str2 == substr * (len2 / i)
        gcd = substr
      end
    end
  end
  substr
end