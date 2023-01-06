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

ActiveRecord::Schema[7.0].define(version: 2023_01_06_042826) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "vehicle_id"
    t.integer "seat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
<<<<<<< HEAD
    t.string "password_digest"
=======
    t.string "password"
>>>>>>> f8ac254 (seeeding and migrations done)
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string "From_location"
    t.string "To_location"
    t.integer "Price"
<<<<<<< HEAD
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saccos", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
>>>>>>> f8ac254 (seeeding and migrations done)
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_name"
    t.integer "route_id"
<<<<<<< HEAD
    t.datetime "departure_time"
    t.datetime "arrival_time"
=======
    t.string "departure_time"
    t.string "arrival_time"
>>>>>>> f8ac254 (seeeding and migrations done)
    t.integer "no_of_seats"
    t.integer "sacco_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
