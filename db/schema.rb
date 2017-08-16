# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170816204545) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "par_1"
    t.integer "par_2"
    t.integer "par_3"
    t.integer "par_4"
    t.integer "par_5"
    t.integer "par_6"
    t.integer "par_7"
    t.integer "par_8"
    t.integer "par_9"
    t.integer "par_10"
    t.integer "par_11"
    t.integer "par_12"
    t.integer "par_13"
    t.integer "par_14"
    t.integer "par_15"
    t.integer "par_16"
    t.integer "par_17"
    t.integer "par_18"
    t.integer "total_par"
    t.integer "yardage_1"
    t.integer "yardage_2"
    t.integer "yardage_3"
    t.integer "yardage_4"
    t.integer "yardage_5"
    t.integer "yardage_6"
    t.integer "yardage_7"
    t.integer "yardage_8"
    t.integer "yardage_9"
    t.integer "yardage_10"
    t.integer "yardage_11"
    t.integer "yardage_12"
    t.integer "yardage_13"
    t.integer "yardage_14"
    t.integer "yardage_15"
    t.integer "yardage_16"
    t.integer "yardage_17"
    t.integer "yardage_18"
    t.integer "total_yardage"
    t.string "tees"
  end

  create_table "scorecards", force: :cascade do |t|
    t.string "player"
    t.integer "hole_1"
    t.integer "hole_2"
    t.integer "hole_3"
    t.integer "hole_4"
    t.integer "hole_5"
    t.integer "hole_6"
    t.integer "hole_7"
    t.integer "hole_8"
    t.integer "hole_9"
    t.integer "hole_10"
    t.integer "hole_11"
    t.integer "hole_12"
    t.integer "hole_13"
    t.integer "hole_14"
    t.integer "hole_15"
    t.integer "hole_16"
    t.integer "hole_17"
    t.integer "hole_18"
    t.integer "total"
  end

  create_table "scorecards_courses", id: false, force: :cascade do |t|
    t.integer "scorecard_id"
    t.integer "course_id"
    t.index ["scorecard_id", "course_id"], name: "index_scorecards_courses_on_scorecard_id_and_course_id"
  end

end
