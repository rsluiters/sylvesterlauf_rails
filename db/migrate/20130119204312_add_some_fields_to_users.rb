class AddSomeFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :address_home, :text
    add_column :users, :address_work, :text
    add_column :users, :phone_home, :string
    add_column :users, :phone_work, :string
    add_column :users, :phone_mobile, :string
    add_column :users, :birthdate, :date
    
  end
end
