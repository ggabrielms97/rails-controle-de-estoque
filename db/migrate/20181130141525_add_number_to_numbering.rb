class AddNumberToNumbering < ActiveRecord::Migration[5.1]
  def change
    add_column :numberings, :number, :string
  end
end
