def max_profit(prices)
    max_profit = 0

    (1...prices.size).each do |i|
        if prices[i] > prices[i - 1]
            max_profit += prices[i] - prices[i - 1]
        end
    end
    max_profit
end
