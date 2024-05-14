module DesignPattern
  module Observer
    class StockTrader < DesignPattern::Observer::Observer
      attr_reader :name

      def initialize(name)
        @name = name
      end

      def update(stock_name, price)
        puts "#{@name} received update: #{stock_name} price is now $#{price}"
        # Implement trading logic based on price update
      end
    end
  end
end