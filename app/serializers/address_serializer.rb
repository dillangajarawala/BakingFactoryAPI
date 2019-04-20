class AddressSerializer < ActiveModel::Serializer
    attributes :id, :street1, :street2, :city, :state, :zip

    def street1
        object.street_1
    end

    def street2
        object.street_2
    end
end