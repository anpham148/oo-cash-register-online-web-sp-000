require 'pry'
class CashRegister
  attr_accessor :cash_register, :discount, :total

  def initialize (discount = nil)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += (price * quantity)
    @quantity = quantity
  end

  def apply_discount
    result = @total - (@total * (@discount / 100.0))
    result
  end

end
