class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :plant
      t.integer :daytime
      t.integer :daytime_start
      t.float :temperature_day
      t.float :temperature_night
      t.float :light_intensity
      t.float :light_wavelength400500
      t.float :light_wavelength500600
      t.float :light_wavelength600700
      t.float :light_wavelength700800
      t.float :water_flowrate
      t.float :water_pressure
      t.float :water_interval
      t.float :water_cycletime
      t.float :water_ph
      t.float :water_nozzle
      t.integer :ventilation_rpm
      t.integer :ventilation_interval
      t.integer :ventilation_cycletime
      t.boolean :ventilation_daytimeonly
      t.integer :co2_concentration


      t.timestamps
    end
  end
end
