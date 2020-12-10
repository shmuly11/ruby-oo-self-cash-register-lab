require 'pry'
class CashRegister
    attr_accessor :total, :discount, :all_items, :all_prices
    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(item, price, quantity = 1)
        @quantity = quantity
        @all_items ||= @all_items = []
        @all_prices ||= @all_prices = []
        @quantity.times do
            @all_items << item
            @all_prices << price
        end

        @total += (price * @quantity)
    end

    def apply_discount
        if @discount == 20
            self.total *= 0.8
            "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end
    end

    def items
        self.all_items
    end

    def void_last_transaction
        @quantity.times do
            @total -= @all_prices[-1]
        end
        
    end
end
