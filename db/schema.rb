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

ActiveRecord::Schema.define(version: 2021_11_03_015751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "overall_score"
    t.integer "food_score"
    t.integer "fans_score"
    t.integer "cleanliness_score"
    t.boolean "recommends"
    t.bigint "stadium_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stadium_id"], name: "index_reviews_on_stadium_id"
  end

  create_table "stadia", force: :cascade do |t|
    t.string "name"
    t.string "team_logo_img_url"
    t.string "location"
    t.string "team_name"
    t.integer "opened"
    t.string "image_url"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reviews", "stadia"
end
