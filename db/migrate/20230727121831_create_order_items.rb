class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :user_id
      t.string :address
      t.integer :order_quantity

      t.timestamps
    end
  end
end
