module DesignPattern
  module Decorator
    class ThickCrustPizza < DesignPattern::Decorator::PizzaBase
      def cost
        12.0
      end

      def description
        "Thick Crust Pizza"
      end
    end
  end
end