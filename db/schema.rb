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

ActiveRecord::Schema.define(version: 2020_10_11_005748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.string "state"
    t.string "lga"
    t.string "town"
    t.string "estimated_pop"
    t.string "radio_stations"
    t.string "tv_stations"
    t.string "other_comms"
    t.string "popular_unions"
    t.string "literacy_level"
    t.string "agent_name"
    t.string "agent_phone"
    t.decimal "daily_withdraw_value"
    t.integer "daily_deposit_count"
    t.string "interest_level"
    t.integer "no_of_locations"
    t.string "location_serial_no"
    t.string "location_platform"
    t.string "location_est"
    t.string "location_geotag"
    t.string "alajo_name"
    t.string "alajo_phone"
    t.string "alajo_prime_location"
    t.integer "alajo_no_of_locations"
    t.string "alajo_union"
    t.string "alajo_population"
    t.string "alajo_avg_age"
    t.string "alajo_avg_customer"
    t.string "alajo_avg_daily_contr"
    t.string "alajo_avg_acc_bal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
