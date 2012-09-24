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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120920211829) do

  create_table "birds", :force => true do |t|
    t.string   "common_name"
    t.string   "scientific_name"
    t.string   "chinese_name"
    t.string   "tibetan_name"
    t.string   "size"
    t.boolean  "summer"
    t.boolean  "fall"
    t.boolean  "winter"
    t.boolean  "spring"
    t.text     "english_description"
    t.text     "chinese_description"
    t.integer  "chapter"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "primary_image_file_name"
    t.string   "primary_image_content_type"
    t.integer  "primary_image_file_size"
    t.datetime "primary_image_updated_at"
    t.string   "secondary_image_file_name"
    t.string   "secondary_image_content_type"
    t.integer  "secondary_image_file_size"
    t.datetime "secondary_image_updated_at"
    t.string   "range_map_file_name"
    t.string   "range_map_content_type"
    t.integer  "range_map_file_size"
    t.datetime "range_map_updated_at"
    t.string   "song_file_name"
    t.string   "song_content_type"
    t.integer  "song_file_size"
    t.datetime "song_updated_at"
  end

end
