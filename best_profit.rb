# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    lowest = prices[0]
    max_profit = 0

    (1...prices.size).each do |i|
        if prices[i] < lowest
            lowest = prices[i]
        else
            max_profit = [max_profit, prices[i] - lowest].max
        end
    end
    max_profit
end
