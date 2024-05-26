# Subtypes must be substitutable for their base types without altering the correctness of the program.

# Violation of LSP: Subclass that does not adhere to the expected behavior
class Bird
  def fly
    'I can fly'
  end
end

class Penguin < Bird
  def fly
    raise 'Penguins cannot fly'
  end
end

# Adherence to LSP: Use interfaces to define behavior and implement appropriately
class Bird
  def move
    raise NotImplementedError, 'Subclasses must implement the move method'
  end
end

class FlyingBird < Bird
  def move
    'I can fly'
  end
end

class Penguin < Bird
  def move
    'I can swim'
  end
end

# Usage
def make_bird_move(bird)
  bird.move
end

make_bird_move(FlyingBird.new) # => 'I can fly'
make_bird_move(Penguin.new)    # => 'I can swim'
