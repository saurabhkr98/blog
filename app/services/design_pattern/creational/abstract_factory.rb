# The Abstract Factory Pattern provides an interface for creating families of related or dependent objects without specifying their concrete classes.

module DesignPattern
  module Creational
    class AbstractFactory
      def create_product_a
        raise NotImplementedError, 'You must implement the create_product_a method'
      end

      def create_product_b
        raise NotImplementedError, 'You must implement the create_product_b method'
      end
    end

    class ConcreteFactory1 < AbstractFactory
      def create_product_a
        ConcreteProductA1.new
      end

      def create_product_b
        ConcreteProductB1.new
      end
    end

    class ConcreteFactory2 < AbstractFactory
      def create_product_a
        ConcreteProductA2.new
      end

      def create_product_b
        ConcreteProductB2.new
      end
    end

    class AbstractProductA
      def useful_function_a
        raise NotImplementedError, 'You must implement the useful_function_a method'
      end
    end

    class ConcreteProductA1 < AbstractProductA
      def useful_function_a
        'The result of the product A1.'
      end
    end

    class ConcreteProductA2 < AbstractProductA
      def useful_function_a
        'The result of the product A2.'
      end
    end

    class AbstractProductB
      def useful_function_b
        raise NotImplementedError, 'You must implement the useful_function_b method'
      end
    end

    class ConcreteProductB1 < AbstractProductB
      def useful_function_b
        'The result of the product B1.'
      end
    end

    class ConcreteProductB2 < AbstractProductB
      def useful_function_b
        'The result of the product B2.'
      end
    end

    # Usage
    factory1 = ConcreteFactory1.new
    product_a1 = factory1.create_product_a
    product_b1 = factory1.create_product_b

    puts product_a1.useful_function_a  # Output: The result of the product A1.
    puts product_b1.useful_function_b  # Output: The result of the product B1.

    factory2 = ConcreteFactory2.new
    product_a2 = factory2.create_product_a
    product_b2 = factory2.create_product_b

    puts product_a2.useful_function_a  # Output: The result of the product A2.
    puts product_b2.useful_function_b  # Output: The result of the product B2.

  end
end