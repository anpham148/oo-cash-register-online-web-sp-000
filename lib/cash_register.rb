require 'pry'
class CashRegister
  attr_accessor :cash_register, :discount, :total
  attr_reader :apply_discount

  def initialize (discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @total += (price * quantity)
    @quantity = quantity
    @quantity.times{ @items << title }
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      @total = @total - (@total * (@discount / 100.0))
      @total = @total.round
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

end
