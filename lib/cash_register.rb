
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end

  def discount(value)
    @discount = value
  end

  def discount
    @discount
  end

  def items
    @items
  end

  def add_item(title, price, quantity=1)
    @last_transaction = (price * quantity)
    @total += last_transaction
    quantity.times {@items << title}
  end

  def last_transaction
    @last_transaction
  end

  def void_last_transaction
    @total -= last_transaction
  end


  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
  end
end


end