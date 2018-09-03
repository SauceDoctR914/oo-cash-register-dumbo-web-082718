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
    @total = @total* ((100 - discount)/100.0)
    return "After the discount, the total comes to $#{discount.to_i}."
  end
end
