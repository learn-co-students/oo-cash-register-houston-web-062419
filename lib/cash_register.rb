
require 'pry'
class CashRegister
attr_accessor :total, :discount, :items
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @prices = []
    end
    
    

    def total
        return @total
    end

    def add_item(item, price, quantity = 1)
        @total = total + (price * quantity)
        # binding.pry
        quantity.times {@items << item}
        @prices << price
    end

    def apply_discount
        @total = total * (1.0 - (@discount / 100.0))
        if @discount == 0 
            return "There is no discount to apply."
        elsif @discount != 0
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        return @items
    end

    def price
        return @prices
    end


    def void_last_transaction
        # binding.pry
        @total = total - price[-1]
        @total
    end

end