class CreatePeopleCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :people_categories do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
