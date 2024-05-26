# Software entities (classes, modules, functions, etc.) should be open for extension but closed for modification.

# Violation of OCP: Direct modification to add new functionality
class Invoice
  def calculate_total(items)
    total = 0
    items.each do |item|
      total += item.price
    end
    total
  end
end

# Adding discount functionality requires modifying the class
class Invoice
  def calculate_total(items)
    total = 0
    items.each do |item|
      total += item.price
    end
    total - discount
  end

  def discount
    10
  end
end

# Adherence to OCP: Use inheritance or composition to add new functionality
class Invoice
  def calculate_total(items)
    total = 0
    items.each do |item|
      total += item.price
    end
    total
  end
end

class DiscountedInvoice < Invoice
  def calculate_total(items)
    total = super
    total - discount
  end

  def discount
    10
  end
end

# Usage
invoice = DiscountedInvoice.new
invoice.calculate_total(items)
