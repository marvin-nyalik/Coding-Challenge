# @param {Integer} n
# @return {Integer}
def tribonacci(n)
    return 0 if n == 0
    return 1 if n == 1 || n == 2
    
    a, b, c = 0, 1, 1
    (n - 2).times do
      a, b, c = b, c, a + b + c
    end
    c
end
