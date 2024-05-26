# High-level modules should not depend on low-level modules. Both should depend on abstractions. Abstractions should not depend on details. Details should depend on abstractions.

# Violation of DIP: High-level module depends on low-level module
class LightBulb
  def turn_on
    'LightBulb on'
  end

  def turn_off
    'LightBulb off'
  end
end

class Switch
  def initialize(bulb)
    @bulb = bulb
  end

  def operate
    @bulb.turn_on
  end
end


# Problems:
#
#   Switch depends directly on the concrete class LightBulb.
#     If we want to change the LightBulb to a different device (e.g., a Fan), we need to modify the Switch class.

# Adherence to DIP: High-level module depends on abstraction
class Switchable
  def turn_on
    raise NotImplementedError
  end

  def turn_off
    raise NotImplementedError
  end
end

class LightBulb < Switchable
  def turn_on
    'LightBulb on'
  end

  def turn_off
    'LightBulb off'
  end
end

class Switch
  def initialize(device)
    @device = device
  end

  def operate
    @device.turn_on
  end
end

# Usage
bulb = LightBulb.new
switch = Switch.new(bulb)
switch.operate # => 'LightBulb on'


# Adding Another Device

class Fan
  include Switchable

  def turn_on
    'Fan on'
  end

  def turn_off
    'Fan off'
  end
end

# Usage
fan = Fan.new
switch = Switch.new(fan)
puts switch.operate # => 'Fan on'
