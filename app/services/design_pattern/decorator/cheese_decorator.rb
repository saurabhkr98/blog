module DesignPattern
  module Decorator
    class CheeseDecorator < DesignPattern::Decorator::PizzaDecorator
      def cost
        @pizza.cost + 2.0
      end

      def description
        @pizza.description + ", Cheese"
      end
    end
  end
end
