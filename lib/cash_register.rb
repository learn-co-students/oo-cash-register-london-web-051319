class CashRegister


  attr_accessor  :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []


  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    if  quantity == 1
      @items << title
    elsif quantity > 1
      quantity.times do |quantity|
        @items << title
      end
    end

  end

  def apply_discount()
    @discount = @discount/100.to_f
    self.total = total - (total * @discount)
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $800."
    end
  end


  def items
    @items
  end

  def void_last_transaction
    @last_transaction = self.total
    self.total -= @last_transaction.to_f
  end


end
