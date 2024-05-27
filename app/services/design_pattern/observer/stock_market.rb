module DesignPattern
  module Observer
    class StockMarket < DesignPattern::Observer::Subject
      def update_stock_price(stock_name, new_price)
        puts "Updating #{stock_name} price to $#{new_price}"
        notify_observers(stock_name, new_price)
      end
    end
  end
end