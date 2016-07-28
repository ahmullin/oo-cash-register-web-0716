class CashRegister
  attr_accessor :total, :discount
  attr_reader :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
    @last_transaction = price*quantity
    quantity.times do |i|
       @items << title
     end
  end

  def apply_discount
    if @discount == 0
      message = "There is no discount to apply."
    elsif
      @total = @total - (@total*discount/100)
      message = "After the discount, the total comes to $#{@total}."
    end
    message
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
