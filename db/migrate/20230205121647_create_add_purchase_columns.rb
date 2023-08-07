class CreateAddPurchaseColumns < ActiveRecord::Migration[7.0]
  def change
    create_table :add_purchase_columns do |t|

      t.timestamps
    end
  end
end
