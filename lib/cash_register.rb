require 'pry'
class CashRegister

    attr_accessor :items, :discount, :total, :last_transaction


    def initialize(discount = 0)
        @total = 0
        @discount = discount

        @items = []

    end

    def total
        @total
    end


    def add_item(title, amount, quantity=1)
        self.total = self.total + amount * quantity
            quantity.times do
              items << title
            end
        self.last_transaction = amount * quantity
    end
    

    def apply_discount
    
        if discount > 0  
            self.total = total - (total * (discount.to_f / 100.to_f)).to_i

            "After the discount, the total comes to $#{self.total}."

        else 
            "There is no discount to apply."
        end
        
    end

    def items       
        @items
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    
    end



end

