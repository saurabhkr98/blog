# The Factory Method Pattern defines an interface for creating an object, but lets subclasses alter the type of objects that will be created.

module DesignPattern
  module Creational
    class Product
      def operation
        raise NotImplementedError, 'You must implement the operation method'
      end
    end

    class ConcreteProductA < Product
      def operation
        'Result of ConcreteProductA'
      end
    end

    class ConcreteProductB < Product
      def operation
        'Result of ConcreteProductB'
      end
    end

    class Creator
      def factory_method
        raise NotImplementedError, 'You must implement the factory_method'
      end

      def some_operation
        product = factory_method
        "Creator: The same creator's code has just worked with #{product.operation}"
      end
    end

    class ConcreteCreatorA < Creator
      def factory_method
        ConcreteProductA.new
      end
    end

    class ConcreteCreatorB < Creator
      def factory_method
        ConcreteProductB.new
      end
    end

    # Usage
    creator_a = ConcreteCreatorA.new
    puts creator_a.some_operation  # Output: Creator: The same creator's code has just worked with Result of ConcreteProductA

    creator_b = ConcreteCreatorB.new
    puts creator_b.some_operation  # Output: Creator: The same creator's code has just worked with Result of ConcreteProductB

  end
end