class ChangeIntegerToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :total, :decimal, :precision => 16, :scale => 2
    change_column :products, :price, :decimal, :precision => 16, :scale => 2
  end
end
