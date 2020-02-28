class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :sensor_id
      t.float :value
      t.datetime :created_at

    end
  end
end
