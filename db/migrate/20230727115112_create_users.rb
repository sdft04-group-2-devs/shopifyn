class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :phone_no
      t.string :role
      t.string :profile_url
      t.string :password_digest
      t.string :confirm_password

      t.timestamps
    end
  end
end
