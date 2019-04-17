class OrderAddressSerializer < ActiveModel::Serializer
    attributes :id, :customer_id, :is_billing, :recipient, :street_1, :street_2, :city, :state, :zip, :active
end