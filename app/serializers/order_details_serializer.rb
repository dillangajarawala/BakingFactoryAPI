class OrderDetailsSerializer < ActiveModel::Serializer
    attributes :id, :date, :grand_total
    belongs_to :customer
    belongs_to :address
    has_many :items

    def address
        OrderAddressSerializer.new(object.address)
    end

    def customer
        OrderCustomerSerializer.new(object.customer)
    end

    def items
        object.items.map do |item|
            OrderItemSerializer.new(item)
        end
    end
end