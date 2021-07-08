
#require "pry"

class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  attr_accessor :discount, :total, :items

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times { @items << title }
    @transactions <<  price * quantity
  end

  def apply_discount
    new_total = @total -= (total * @discount) / 100

    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{new_total}."
    end
  end

  def void_last_transaction
    @total -= @transactions.last
  end
end
