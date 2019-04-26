class AddSellerToSale < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :seller_id, :integer
  end
end
