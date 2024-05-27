The Observer pattern is a behavioral design pattern where an object (known as the subject) maintains a list of dependents (observers) 
that need to be notified of any state changes. When the state of the subject changes, it notifies all registered observers 
automatically, allowing them to react accordingly. This pattern promotes loose coupling between objects, as observers are only aware 
of the subject's interface and not its implementation details.

Observer Pattern Components:
- Subject: This is the object that maintains a list of observers and provides methods to register, unregister, and notify observers
of state changes.

- Observer: This is the interface (or abstract class) that defines the method(s) that the subject calls to notify observers of state 
changes.

- Concrete Subject: This is a specific implementation of the subject. It maintains the state and notifies registered observers when 
the state changes.

- Concrete Observer: This is a specific implementation of the observer. It registers with a subject to receive notifications and 
defines how it reacts to state changes.

Example: Stock Price Tracker using Observer Pattern in Ruby



Explanation:
Observer Interface (Observer): Defines the update method that concrete observers (StockTrader) must implement to receive updates 
from the subject (StockMarket).

Concrete Observer (StockTrader): Represents traders who are interested in stock price updates. They implement the update method to 
react to changes in stock prices.

Subject (Subject): Defines methods (add_observer, remove_observer, notify_observers) to manage observers and notify them of changes.

Concrete Subject (StockMarket): Represents the stock market, which maintains the list of traders (observers) and notifies them when 
stock prices change.

In this example:

StockMarket is the subject that notifies registered StockTrader observers when stock prices are updated using update_stock_price.

StockTrader is an observer that implements the update method to react to stock price updates by performing trading actions 
(not implemented in this example).

Traders (StockTrader instances) are registered as observers of the StockMarket and receive notifications when stock prices change.

The Observer pattern allows for a decoupled and flexible design where subjects (like the StockMarket) can notify multiple observers
(StockTrader instances) of changes without them having direct knowledge of each other's details. This promotes modularity, 
scalability, and maintainability in software systems.

