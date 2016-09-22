class Order < ApplicationRecord

  has_many :line_items, dependent: :destroy

  validates :quantity, presence: true

  validates :product_id, presence: true

end
