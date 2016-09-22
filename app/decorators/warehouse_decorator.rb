class WarehouseDecorator < Draper::Decorator
delegate_all

decorates_association :storage_items


  def as_json *args
    if context[:index]
      {
        id: id,
        email: email
      }
    else
      {
        id: id,
        products: storage_items
      }
    end
  end

end
