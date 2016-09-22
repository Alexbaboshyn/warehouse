class LineItem < ApplicationRecord

  belongs_to :warehouse

  belongs_to :product

  belongs_to :order

end
