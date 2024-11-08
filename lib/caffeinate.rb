class Customer
    def orders
    end

    def pays_with_credit_card
    end
end

class Associate
    def process_payment(price,card_minimum)
        if price >= card_minimum
            return [true, 'process_card']
        else
            return [false, 'request_cash']
        end

       
    end
end

class Caffeinate
    def initialize(customer, associate)
        @customer = customer
        @associate = associate
    end

    def order(price)
        @customer.orders
    end

    def pay
        @customer.pays_with_credit_card
    end

    def process_payment
        @associate.process_payment
    end
    
end