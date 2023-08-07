class CreateDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :deals do |t|
      t.integer :due_number
      t.string :card_name
      t.string :card_password
      t.integer :purchase_id

      t.timestamps
    end
  end
end
