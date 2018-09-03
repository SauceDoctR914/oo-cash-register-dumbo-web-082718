class CashRegister
  
  attr_accessor :total, :title, :price, :discount
  
  @@items = []
  
  def initialize(discount= 0) #optional args come last in parens
    @total = 0
    @discount = discount
    @title = title 
    @price = price
  end
  
  
  def add_item(title, price, quantity = 1)
    
    @total = @total + price*quantity
    @@items << title
    return total 
  end
  
  def apply_discount
    if discount > 0
    @total = @total* ((100 - discount)/100.0)
    "After the discount, the total comes to $#{total.to_i}."
    else 
      return "There is no discount to apply."
      end
    end
  end
  
  def items
    return @@items
  end
