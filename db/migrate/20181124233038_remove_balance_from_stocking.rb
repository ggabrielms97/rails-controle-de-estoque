class RemoveBalanceFromStocking < ActiveRecord::Migration[5.1]
  def change
    remove_column :stockings, :balance, :integer
  end
end
