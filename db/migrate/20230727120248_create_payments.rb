class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :order_item_id
      t.float :amount
      t.string :payment_method
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
