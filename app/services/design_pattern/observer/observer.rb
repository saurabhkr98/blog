module DesignPattern
  module Observer
    class Observer
      def update(stock_name, price)
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end