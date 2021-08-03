def stock_picker (days_prices=[30, 10, 6, 9, 15, 8, 28, 10, 1])

min = days_prices[0]
max_profit = 0
indexes = []

  days_prices.each_with_index { |price, index|
    # Find the local min and his index
    if price < min
      min = price
      id = days_prices.find_index(min)

      # Calculate the min with every next value
      for i in id..days_prices.length - 1
        value = days_prices[i] - min
        
        # Get the highest value after substructing
        if value > max_profit
          a = days_prices[id..days_prices.length - 1].max 
          max_profit = value
          indexes = [id, days_prices.find_index(a)]
        end
      end
    end

  }
print indexes, "\n"
end

stock_picker 
