class ChangeCategoryDataTypeInProducts < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :category, :string
  end
end
