The Decorator pattern is a structural design pattern that allows behavior to be added to individual objects, either 
statically or dynamically, without affecting the behavior of other objects from the same class. This pattern is useful for 
extending the functionality of objects in a flexible and reusable way.


Decorator Pattern Overview
In the Decorator pattern:

Component: Defines the interface for objects that can have responsibilities added to them dynamically.
Concrete Component: Implements the Component interface and defines objects to which additional responsibilities can be added.
Decorator: Maintains a reference to a Component object and conforms to the Component interface, adding responsibilities dynamically.
Concrete Decorator: Extends the Decorator class and adds specific responsibilities to the Component.


Explanation
Pizza (Component): Defines the interface for pizza objects (cost and description methods).

PlainPizza (Concrete Component): Implements the Pizza interface with basic pizza functionality (no toppings).

PizzaDecorator (Decorator): Abstract class that extends Pizza, allowing additional responsibilities to be added dynamically.

CheeseDecorator, PepperoniDecorator (Concrete Decorators): Extend PizzaDecorator to add specific toppings (cheese, pepperoni) to the pizza. They modify the cost and description methods of the decorated pizza object (@pizza).


In this updated example:

ThinCrustPizza and ThickCrustPizza are concrete pizza types inheriting from the abstract class PizzaBase.
CheeseDecorator and PepperoniDecorator can be applied to different types of pizzas (ThinCrustPizza, ThickCrustPizza) 
to add toppings dynamically.
Using an abstract class (PizzaBase) to represent different pizza types allows you to define a hierarchy of pizza objects and apply 
the Decorator pattern to customize these objects with toppings in a flexible and reusable way. This approach promotes code 
reusability, modularity, and maintainability by separating concerns and leveraging polymorphism in object-oriented programming.





