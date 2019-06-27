class CashRegister

  attr_accessor :total, :discount

  def initialize ( discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << item}
    @last_transaction = [item, price, quantity]
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total = @total * (100 - @discount)/100
    "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_transaction[1] * @last_transaction[2]
  end
end
