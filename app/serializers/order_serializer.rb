class OrderSerializer < ActiveModel::Serializer
  attributes :id, :date, :grandTotal, :customerName, :itemCount

  def customerName
    object.customer.name
  end

  def grandTotal
    object.grand_total
  end

  def itemCount
    object.order_items.inject(0){|sum,oi| sum += oi.quantity}
  end
end
