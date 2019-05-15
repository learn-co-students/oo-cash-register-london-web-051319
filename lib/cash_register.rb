class CashRegister
	attr_accessor :total
	attr_reader :items, :discount
	
	def initialize(discount=nil)
		@total = 0
		@items = []
		@discount = discount if discount
		@transactions = []
	end

	def add_item(title, amount, quantity = 1)
		@total += amount * quantity
		@transactions << [title, amount, quantity]
		while quantity > 0 
			@items << title
			quantity -= 1

		end
	end

	def apply_discount
		if @discount
			@total = @total * (100 - @discount) / 100
			return "After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		last_trans = @transactions.pop
		@total -= last_trans[1]*last_trans[2]
	end

end
