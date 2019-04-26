class CreateNumberings < ActiveRecord::Migration[5.1]
  def change
    create_table :numberings do |t|
      t.integer :number

      t.timestamps
    end
  end
end
