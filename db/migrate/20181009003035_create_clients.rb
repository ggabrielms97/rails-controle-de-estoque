class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :document_number
      t.string :address
      t.string :phone
      t.string :status

      t.timestamps
    end
  end
end
