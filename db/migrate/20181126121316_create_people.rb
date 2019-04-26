class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.references :people_category, foreign_key: true
      t.string :name
      t.boolean :status
      t.string :document
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
