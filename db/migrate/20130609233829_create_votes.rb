class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :score
      t.references :employee
      t.string :phone_number

      t.timestamps
    end
    add_index :votes, :employee_id
  end
end
