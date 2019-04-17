class OrderItemSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :category, :units_per_item, :weight, :active
end