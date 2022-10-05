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
    t.boolean "sold"
    t.string "driver_name"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "quote"
  end

end
