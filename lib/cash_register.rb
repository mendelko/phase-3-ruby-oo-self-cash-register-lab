class CashRegister
    
    attr_accessor :discount, :total, :items, :last_item

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
    end


    def add_item(title, price, quantity = 1)
        @price = price
        @quantity = quantity
        self.last_item = price * quantity
        self.total += price * quantity
        quantity.times do 
            @items.push(title)
        end
    end
    
    def apply_discount
        if @discount
            percent = @discount / 100.0
            self.total -= (self.total * percent).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_item
    end
end
