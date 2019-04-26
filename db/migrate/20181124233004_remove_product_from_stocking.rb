class RemoveProductFromStocking < ActiveRecord::Migration[5.1]
  def change
    remove_reference :stockings, :product, foreign_key: true
    remove_reference :stockings, :numbering, foreign_key: true
    remove_column :stockings, :entry, :integer
    remove_column :stockings, :out, :integer
    remove_reference :stockings, :sale_product, foreign_key: true
  end
end
