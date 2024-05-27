module DesignPattern
  module Observer
    class Driver

      def drive

        # Create stock market (subject) and traders (observers)
        market = DesignPattern::Observer::StockMarket.new
        trader1 = DesignPattern::Observer::StockTrader.new('Trader 1')
        trader2 = DesignPattern::Observer::StockTrader.new('Trader 2')

        # Register traders as observers of the stock market
        market.add_observer(trader1)
        market.add_observer(trader2)

        # Simulate stock price updates
        market.update_stock_price('ABC', 100)
        market.update_stock_price('XYZ', 150)
      end
    end
  end
end