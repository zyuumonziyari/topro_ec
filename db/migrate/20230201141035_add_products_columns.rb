class AddProductsColumns < ActiveRecord::Migration[7.0]
  def change

    add_column :products, :img_name, :string
    add_column :products, :content, :string
    add_column :products, :name, :string
    add_column :products, :price, :integer
    add_column :products, :favo_count, :integer



  end
end
