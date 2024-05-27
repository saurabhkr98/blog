module DesignPattern
  module Decorator
    class PizzaBase
      def cost
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end

      def description
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end
    end
  end
end