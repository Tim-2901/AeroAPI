class CreateChambers < ActiveRecord::Migration[6.0]
  def change
    create_table :chambers do |t|
      t.integer :current_recipe_id
      t.datetime :starttime

      t.timestamps
    end
  end
end
