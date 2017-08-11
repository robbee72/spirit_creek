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

ActiveRecord::Schema.define(version: 20170810164228) do

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
  end

end
