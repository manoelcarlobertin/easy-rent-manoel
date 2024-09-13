class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :name, limit: 100
      t.date :dob
      t.string :email
      t.string :mobile_phone

      t.timestamps
    end
  end
end
