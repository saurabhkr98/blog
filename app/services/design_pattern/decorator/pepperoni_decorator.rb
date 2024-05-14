module DesignPattern
  module Decorator
    class PepperoniDecorator < DesignPattern::Decorator::PizzaDecorator
      def cost
        @pizza.cost + 4.0
      end

      def description
        @pizza.description + ", Pepperoni"
      end
    end
  end
end
