class AddPurchaseColumns < ActiveRecord::Migration[7.0]
  def change

    add_column :purchases, :name, :string
    add_column :purchases, :email, :string
    add_column :purchases, :address, :string


  end
end
