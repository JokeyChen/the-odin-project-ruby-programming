# Stock Picker

# This method takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best
# day to sell. Days start at 0.

def stock_picker prices
    max_profit = 0
    buy_day = 0
    sell_day = 0
    # loop through each day to buy
    i = 0
    while i < prices.length
        buy_price = prices[i]
        # then loop through the rest of days to sell
        j = i
        while j < prices.length
            sell_price = prices[j]
            profit = sell_price - buy_price
            if profit > max_profit
                max_profit = profit
                buy_day = i
                sell_day = j
            end
            j += 1
        end
        i += 1
    end
    [buy_day, sell_day]
end