class CashRegister

attr_accessor :total, :items, :transactions
attr_reader :discount


def initialize(discount=0)
@total = 0
@discount = discount
@items = []
@transactions = []
end

def add_item(title, price, quantity=1)
quantity !=0 ? @total += price*quantity : @total += price

x = 1
while
  x <= quantity do
@items << title
x +=1
end

x = 1
while
  x <= quantity do
@transactions << price
x +=1
end



end


def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
    decimal = @discount/100.to_f
    discount_amount = @total * decimal
    after_discount = @total - discount_amount.to_i
    @total = after_discount
    return "After the discount, the total comes to $#{after_discount}."
end
end

def items
  @items
end

def void_last_transaction
  @total -= @transactions.pop
end
end
