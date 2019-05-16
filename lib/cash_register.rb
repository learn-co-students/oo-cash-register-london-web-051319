require "pry"

class CashRegister

   attr_reader :discount
   attr_accessor :total

   def initialize(discount = 0)
      @discount = discount
      @total = 0
      @item_list = []
   end

   def add_item(item, cost, num = 1)
      @total = total
      total = @pre_total
      @total += cost*num
      if num > 1
         num.times do |num|
            @item_list << item
         end
      elsif num == 1
         @item_list << item
      end
      @total
   end
   
   def items
      @item_list 
   end
   
   def total
      @total
   end

   def apply_discount
      if @discount > 0
         self.total -= self.total * @discount / 100
         "After the discount, the total comes to $800."
      else
         "There is no discount to apply."
      end
end
   
   def void_last_transaction
      # @item_list.delete(@item)
      # binding.pry
      @total -= total
   end
   
   # def total=(total)
   #    @total = total
   # end
   

# WORKS BUT NOT REQUIRED



   # def discount
   #    @discount
   # end

end
