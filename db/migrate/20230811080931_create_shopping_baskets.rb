class CreateShoppingBaskets < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_baskets do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity

      t.timestamps
    end
  end
end
