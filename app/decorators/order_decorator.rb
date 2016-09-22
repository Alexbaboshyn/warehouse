class OrderDecorator < Draper::Decorator
delegate_all

  def as_json *args
    {
      id: id,
      product_id: product_id,
      quantity: quantity
    }
  end

end
