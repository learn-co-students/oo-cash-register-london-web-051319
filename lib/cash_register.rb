require "pry"
class CashRegister
attr_accessor :total, :discount, :last_transaction
attr_reader  :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        @item_total = price * quantity
        quantity.times do
            @items << title
          end
        binding.pry
    end

    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        else
            @total -= @total * discount / 100
            return "After the discount, the total comes to $#{@total}."
        end
        
    end

    def items
        @items
    end 

    def void_last_transaction
        @total = @total - @item_total.to_f
    end

    #binding.pry
end
