class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
