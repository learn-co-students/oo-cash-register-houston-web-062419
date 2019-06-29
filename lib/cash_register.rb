
class CashRegister
    attr_reader :quantity,:discount
    attr_accessor :total,:items
  
    def initialize(discount = 0)
        @discount = discount
        @total = 0
        
        @items = []
    end
    def add_item(title,price,quantity = 1)
        @total = total + (price * quantity)
        quantity.times { items << title }  
    end 
    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
        discount_percent = discount.to_f/100
        @total = (@total.to_f - (@total.to_f * discount_percent)).to_i 
        return "After the discount, the total comes to $#{@total}."
        end
    end
    def items
        @items
    end
    def void_last_transaction 
        @total -= total 
    end
end
