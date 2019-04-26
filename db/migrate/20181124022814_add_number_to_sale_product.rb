class AddNumberToSaleProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :sale_products, :number, :integer
  end
end
