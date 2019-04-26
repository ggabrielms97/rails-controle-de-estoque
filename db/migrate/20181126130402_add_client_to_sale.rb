class AddClientToSale < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :client_id, :integer
  end
end
