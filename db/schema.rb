# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_28_044358) do

  create_table "chambers", force: :cascade do |t|
    t.integer "current_recipe_id"
    t.datetime "starttime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "model"
    t.integer "pin"
    t.integer "device_type"
    t.integer "location"
    t.boolean "issensor"
    t.boolean "isactive"
    t.float "min_value"
    t.float "max_value"
    t.float "resolution"
    t.float "accuracy"
    t.float "repeatability"
    t.float "min_delay"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "sensor_id"
    t.float "value"
    t.datetime "created_at"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "plant"
    t.integer "daytime"
    t.integer "daytime_start"
    t.float "temperature_day"
    t.float "temperature_night"
    t.float "light_intensity"
    t.float "light_wavelength400500"
    t.float "light_wavelength500600"
    t.float "light_wavelength600700"
    t.float "light_wavelength700800"
    t.float "water_flowrate"
    t.float "water_pressure"
    t.float "water_interval"
    t.float "water_cycletime"
    t.float "water_ph"
    t.float "water_nozzle"
    t.integer "ventilation_rpm"
    t.integer "ventilation_interval"
    t.integer "ventilation_cycletime"
    t.boolean "ventilation_daytimeonly"
    t.integer "co2_concentration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
