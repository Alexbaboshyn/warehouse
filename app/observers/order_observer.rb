class OrderObserver < ActiveRecord::Observer

  def after_create(order)
    StorageItem.where(product_id: order.product_id).each do |item|
      LineItem.create!(warehouse_id: item.warehouse_id, quantity: item.quantity, order_id: order.id, product_id: item.product_id)
    end
  end

end
