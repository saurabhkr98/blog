# A class should have only one reason to change, meaning it should have only one job or responsibility.

# Violation of SRP: User class has multiple responsibilities
class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def save
    # code to save user to database
  end

  def send_welcome_email
    # code to send welcome email
  end
end

# Adherence to SRP: Separate classes for different responsibilities
class User
  attr_accessor :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end
end

class UserRepository
  def save(user)
    # code to save user to database
  end
end

class WelcomeEmailSender
  def send_welcome_email(user)
    # code to send welcome email
  end
end

# Usage
user = User.new('John Doe', 'john@example.com')
UserRepository.new.save(user)
WelcomeEmailSender.new.send_welcome_email(user)
