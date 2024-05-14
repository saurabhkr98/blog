module DesignPattern
  module Strategy
    class PaymentStrategy
      def pay(amount)
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end