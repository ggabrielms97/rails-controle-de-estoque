class CreateStockingProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :stocking_products do |t|
      t.references :stocking, foreign_key: true
      t.references :product, foreign_key: true
      t.references :numbering, foreign_key: true
      t.integer :entry
      t.integer :out
      t.integer :balance
      t.references :sale_product, foreign_key: true

      t.timestamps
    end
  end
end
