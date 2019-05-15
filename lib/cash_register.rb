class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last = 0
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << item}
    @last = price
  end

  def apply_discount
    return "There is no discount to apply." if @discount.nil?
    @total *= (100 - @discount)/100.0
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last
  end
end
