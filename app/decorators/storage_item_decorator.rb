class StorageItemDecorator < Draper::Decorator
delegate_all

  def as_json *args
    {
      id: product_id,
      title: title,
      quantity: quantity
    }
  end


  def title
    Product.find_by!(id: product_id).title
  end

end
