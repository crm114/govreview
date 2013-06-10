class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.references :agency

      t.timestamps
    end
    add_index :employees, :agency_id
  end
end
