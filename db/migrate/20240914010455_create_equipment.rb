class CreateEquipment < ActiveRecord::Migration[7.2]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :serial_number, unique: true

      t.timestamps
    end
  end
end
