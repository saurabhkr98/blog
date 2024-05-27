# The Builder Pattern is used to construct a complex object step by step. It allows you to create different types and representations of an object using the same construction code.

module DesignPattern
  module Creational
    class Product
      attr_accessor :part_a, :part_b, :part_c

      def initialize
        @part_a = ''
        @part_b = ''
        @part_c = ''
      end

      def show
        puts "Part A: #{@part_a}, Part B: #{@part_b}, Part C: #{@part_c}"
      end
    end

    class Builder
      def build_part_a
        raise NotImplementedError, 'You must implement the build_part_a method'
      end

      def build_part_b
        raise NotImplementedError, 'You must implement the build_part_b method'
      end

      def build_part_c
        raise NotImplementedError, 'You must implement the build_part_c method'
      end
    end

    class ConcreteBuilder < Builder
      def initialize
        @product = Product.new
      end

      def build_part_a
        @product.part_a = 'Part A'
      end

      def build_part_b
        @product.part_b = 'Part B'
      end

      def build_part_c
        @product.part_c = 'Part C'
      end

      def get_product
        @product
      end
    end

    class Director
      def initialize(builder)
        @builder = builder
      end

      def construct
        @builder.build_part_a
        @builder.build_part_b
        @builder.build_part_c
      end
    end

    # Usage
    builder = ConcreteBuilder.new
    director = Director.new(builder)
    director.construct

    product = builder.get_product
    product.show  # Output: Part A: Part A, Part B: Part B, Part C: Part C

  end
end