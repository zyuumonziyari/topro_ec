class AddDealColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :deals, :card_number, :integer
  end
end
