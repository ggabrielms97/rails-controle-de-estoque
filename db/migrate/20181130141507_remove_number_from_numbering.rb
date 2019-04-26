class RemoveNumberFromNumbering < ActiveRecord::Migration[5.1]
  def change
    remove_column :numberings, :number, :integer
  end
end
