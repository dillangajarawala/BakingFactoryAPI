class OrderCustomerSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :phone, :user_id, :active
end