class ChangeCartIdToUserId < ActiveRecord::Migration[7.0]
  def change
    rename_column :cart_items, :cart_id, :user_id
  end
end
