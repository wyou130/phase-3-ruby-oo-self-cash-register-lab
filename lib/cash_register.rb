require 'pry'

class CashRegister

    attr_reader :discount 
    attr_accessor :total

    def initialize(discount = 0) #for optional arguments, set default value - if no default, not "optional"
        @discount = discount
        @total = 0 #total does not need to be in parameters - all initialized instances will have total = 0
    end

    def total
        @total
    end 

    def add_item(title, price, quantity = 1)
        @total += price * quantity
    end

    def apply_discount
        if @discount > 0
            @total = total - (total * discount/100)
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

end

c1 = CashRegister.new
c2 = CashRegister.new(20)

binding.pry