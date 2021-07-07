class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last = 0
  end


  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    @last = price
  end

  def apply_discount
    if discount.nil?
      "There is no discount to apply."
    else
      @total *= (100 - @discount.to_f)/100
      "After the discount, the total comes to $#{@total.to_i}."
  end
end

def items
  @items
end

def void_last_transaction
  @total -= @last
end

end
