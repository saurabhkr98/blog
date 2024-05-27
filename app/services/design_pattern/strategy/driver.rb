module DesignPattern
  module Strategy
    class Driver
      def drive
        # Create different payment strategies
        credit_card = DesignPattern::Strategy::CreditCardPayment.new
        paypal = DesignPattern::Strategy::PaypalPayment.new

        # Create a payment processor with a specific payment strategy
        processor = DesignPattern::Strategy::PaymentProcessor.new(credit_card)

        # Process payments using the chosen strategy
        processor.process_payment(100)  # Output: "Paying $100 using credit card."

        # Change the payment strategy at runtime
        processor.payment_strategy = paypal
        processor.process_payment(50)   # Output: "Paying $50 using PayPal."

        # DesignPattern::Strategy::Driver.new.drive
      end
    end
  end
end