class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :lastName, :firstName, :phone, :email
  has_many :addresses

  def lastName
    object.last_name
  end

  def firstName
    object.first_name
  end
end
