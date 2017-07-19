
class CashRegister
	attr_accessor :discount, :total, :items, :last_transaction

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(item, price, quantity=1)
		@total += price*quantity
		@last_transaction = price
		until quantity == 0
			@items << item
			quantity -= 1
		end
	end

	def void_last_transaction
		@total -= @last_transaction
	end

	def apply_discount
		if @discount > 0
			@total -= @total * @discount / 100
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
	end


end




