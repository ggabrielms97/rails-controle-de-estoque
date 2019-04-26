class RemoveClientFromSale < ActiveRecord::Migration[5.1]
  def change
    remove_reference :sales, :client, foreign_key: true
  end
end
