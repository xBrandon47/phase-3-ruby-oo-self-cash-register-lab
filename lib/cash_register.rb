class CashRegister

    attr_accessor :total, :discount
    attr_writer :dollars

    def initialize(discount= 0)
        @discount= discount 
        @total = 0
    end

    def add_item(title, price, amount =1)
        @total += price * amount
    end

    def apply_discount 
        if discount > 0 
            my_discount = @total * @discount/100
            @total = total - my_discount
            "After the discount, the total comes to $#{total}."
        else 
            "There is no discount to apply."
        end
    end

    def items(item, price)
        
    end
end

c1 = CashRegister.new