require 'pry'
class CashRegister
  attr_accessor :total, :item, :discount, :quantity, :last_transaction

  def initialize(customer_discount = nil)
    @discount = customer_discount
    @total = 0
    @items = []
  end

  def add_item(title, item_price, number_of_items = 1)
    @item = title
    @last_transaction = (item_price * number_of_items)
    @total += last_transaction
    @quantity = number_of_items
    number_of_items.times do
      @items << title
      #binding.pry
    end
  end

  def apply_discount
    if @discount != nil
      calc_discount = @discount/100.0 * @total
      @total -= calc_discount.floor
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end

  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
