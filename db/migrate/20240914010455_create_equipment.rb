class CreateEquipment < ActiveRecord::Migration[7.2]
  def change
    create_table :equipment do |t|
      t.string :name, null: false
      t.string :serial_number, unique: true, null: false

      t.timestamps
    end
  end
end
