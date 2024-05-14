module DesignPattern
  module Strategy
    class CreditCardPayment < DesignPattern::Strategy::PaymentStrategy
      def pay(amount)
        puts "Paying $#{amount} using credit card."
      end
    end
  end
end
