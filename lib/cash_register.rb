class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
        self.last_transaction = price
        quantity.times do
        @items << title
    end
    @last_transaction = price * quantity
end

    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        end
        @total -= @total * discount / 100
        return "After the discount, the total comes to $#{@total}."
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end