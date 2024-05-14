module DesignPattern
  module Decorator
    class ThinCrustPizza < DesignPattern::Decorator::PizzaBase
      def cost
        8.0
      end

      def description
        "Thin Crust Pizza"
      end
    end
  end
end