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

ActiveRecord::Schema.define(:version => 20130524111754) do

  create_table "banks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", :force => true do |t|
    t.string   "card_type"
    t.string   "category"
    t.string   "name"
    t.integer  "bank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards_deals", :id => false, :force => true do |t|
    t.integer "card_id", :limit => 8
    t.integer "deal_id", :limit => 8
  end

  add_index "cards_deals", ["card_id"], :name => "index_cards_deals_on_card_id"
  add_index "cards_deals", ["deal_id"], :name => "index_cards_deals_on_deal_id"

  create_table "deals", :force => true do |t|
    t.string   "schemetext", :limit => 1000
    t.string   "desc",       :limit => 5000
    t.string   "vendor"
    t.string   "imageurl"
    t.datetime "validupto"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
