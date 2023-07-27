class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.text :brand
      t.integer :stock_quantity
      t.integer :category_id
      t.string :image_url_1
      t.string :image_url_2
      t.string :image_url_3

      t.timestamps
    end
  end
end
