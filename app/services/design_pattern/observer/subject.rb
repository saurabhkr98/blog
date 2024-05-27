module DesignPattern
  module Observer
    # subject.rb
    class Subject
      def initialize
        @observers = []
      end

      def add_observer(observer)
        @observers << observer
      end

      def remove_observer(observer)
        @observers.delete(observer)
      end

      def notify_observers(stock_name, price)
        @observers.each { |observer| observer.update(stock_name, price) }
      end
    end

  end
end