module DesignPattern
  module Strategy
    class PaypalPayment < DesignPattern::Strategy::PaymentStrategy
      def pay(amount)
        puts "Paying $#{amount} using paypal."
      end
    end
  end
end
