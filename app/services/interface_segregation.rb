# Clients should not be forced to depend on interfaces they do not use. Instead of one fat interface, many small interfaces are preferred.

# Violation of ISP: One large interface
class Worker
  def work
    raise NotImplementedError
  end

  def eat
    raise NotImplementedError
  end
end

class HumanWorker < Worker
  def work
    'Working...'
  end

  def eat
    'Eating...'
  end
end

class RobotWorker < Worker
  def work
    'Working...'
  end

  # RobotWorker is forced to implement eat, which it does not need
  def eat
    raise 'Robots do not eat'
  end
end

# Adherence to ISP: Multiple small interfaces
class Workable
  def work
    raise NotImplementedError
  end
end

class Eatable
  def eat
    raise NotImplementedError
  end
end

class HumanWorker < Workable
  include Eatable

  def work
    'Working...'
  end

  def eat
    'Eating...'
  end
end

class RobotWorker < Workable
  def work
    'Working...'
  end
end

# Usage
human = HumanWorker.new
robot = RobotWorker.new

human.work # => 'Working...'
human.eat  # => 'Eating...'
robot.work # => 'Working...'
