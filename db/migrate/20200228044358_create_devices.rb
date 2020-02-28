class CreateDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :devices do |t|
      t.string :model
      t.integer :pin
      t.integer :device_type
      t.integer :location
      t.boolean :issensor
      t.boolean :isactive

      t.timestamps
    end
  end
end

