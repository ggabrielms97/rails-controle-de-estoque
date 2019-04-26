class AddNumberingToProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :numbering, foreign_key: true
  end
end
