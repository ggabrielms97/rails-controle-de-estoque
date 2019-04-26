class CreateStockings < ActiveRecord::Migration[5.1]
  def change
    create_table :stockings do |t|
      t.references :product, foreign_key: true
      t.references :numbering, foreign_key: true
      t.integer :entry
      t.integer :out
      t.integer :balance

      t.timestamps
    end
  end
end
