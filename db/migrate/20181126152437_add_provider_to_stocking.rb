class AddProviderToStocking < ActiveRecord::Migration[5.1]
  def change
    add_column :stockings, :provider_id, :integer
  end
end
