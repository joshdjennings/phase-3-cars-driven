# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_21_025705) do

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "year"
    t.string "color"
    t.string "category"
    t.string "motor"
    t.string "fuel_type"
    t.string "transmission"
    t.string "drive"
    t.integer "year_bought"
    t.integer "year_sold"
    t.string "driver_name"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "phone"
    t.string "quote"
    t.integer "num_of_cars"
  end

end
