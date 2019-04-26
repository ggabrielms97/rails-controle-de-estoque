class AddSaleProductToStocking < ActiveRecord::Migration[5.1]
  def change
    add_reference :stockings, :sale_product, foreign_key: true
  end
end
