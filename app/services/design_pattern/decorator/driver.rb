module DesignPattern
  module Decorator
    class Driver
      def drive
        # usage example

        thin_crust_pizza = DesignPattern::Decorator::ThinCrustPizza.new
        puts "Cost: #{thin_crust_pizza.cost}, Description: #{thin_crust_pizza.description}"

        # Add cheese to thin crust pizza
        cheese_thin_crust = DesignPattern::Decorator::CheeseDecorator.new(thin_crust_pizza)
        puts "Cost: #{cheese_thin_crust.cost}, Description: #{cheese_thin_crust.description}"

        # Create a thick crust pizza and add pepperoni
        thick_crust_pizza = DesignPattern::Decorator::ThickCrustPizza.new
        pepperoni_thick_crust = DesignPattern::Decorator::PepperoniDecorator.new(thick_crust_pizza)
        puts "Cost: #{pepperoni_thick_crust.cost}, Description: #{pepperoni_thick_crust.description}"

        # create a thick crust pizza with pepperoni and cheese
        cheese_pepperoni_thick_crust = DesignPattern::Decorator::CheeseDecorator.new(pepperoni_thick_crust)
        puts "Cost: #{cheese_pepperoni_thick_crust.cost}, Description: #{cheese_pepperoni_thick_crust.description}"
      end
    end
  end
end