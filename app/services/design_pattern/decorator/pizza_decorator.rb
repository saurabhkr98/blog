module DesignPattern
  module Decorator
    class PizzaDecorator
      attr_reader :pizza

      def initialize(pizza)
        @pizza = pizza
      end

      def cost
        @pizza.cost
      end

      def description
        @pizza.description
      end
    end
  end
end