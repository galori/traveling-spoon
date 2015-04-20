# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150419194146) do

  create_table "reservations", force: true do |t|
    t.string   "country"
    t.string   "city"
    t.datetime "date"
    t.string   "additional_dates"
    t.integer  "number_of_guests"
    t.string   "experience_type"
    t.string   "preferred_meal_time"
    t.string   "has_dietary_restrictions"
    t.string   "dietary_restrictions"
    t.string   "spice_preference"
    t.string   "wants_alcohol"
    t.integer  "guests_drinking"
  end

end
