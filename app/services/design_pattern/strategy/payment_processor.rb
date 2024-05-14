module DesignPattern
  module Strategy
    class PaymentProcessor
      attr_accessor :payment_strategy

      def initialize(payment_strategy)
        @payment_strategy = payment_strategy
      end

      def process_payment(amount)
        @payment_strategy.pay(amount)
      end
    end
  end
end
