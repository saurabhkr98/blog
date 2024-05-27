# The Singleton Pattern ensures a class has only one instance and provides a global point of access to it.

module DesignPattern
  module Creational
    class SingletonExample
      @instance = new

      private_class_method :new

      def self.instance
        @instance
      end

      def some_method
        puts "This is a method in the singleton instance."
      end
    end

    # Usage
    singleton1 = SingletonExample.instance
    singleton2 = SingletonExample.instance

    puts singleton1.equal?(singleton2)  # Output: true
    singleton1.some_method              # Output: This is a method in the singleton instance.
  end
end
