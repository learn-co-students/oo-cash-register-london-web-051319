class CashRegister
  attr_accessor :discount , :total
  
  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @last_transaction = (price * quantity)
    @total += last_transaction
    quantity.times {@items << title}
  end

  def apply_discount
    if discount != nil
      @total = @total - ((@discount.to_f/100) * @total)
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def last_transaction
    @last_transaction
  end

  def void_last_transaction
    @total -=last_transaction
  end
end 

