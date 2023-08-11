class ChangeCategoryIdToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :category_id, :category 
  end
end
