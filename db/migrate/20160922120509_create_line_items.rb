class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|

      t.integer :warehouse_id

      t.integer :quantity

      t.integer :order_id

      t.integer :product_id
    end
  end
end
