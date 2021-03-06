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

ActiveRecord::Schema.define(:version => 20131128192611) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "composers", :force => true do |t|
    t.string  "name"
    t.text    "description", :limit => 255
    t.integer "genre_id"
    t.string  "first_name"
    t.string  "last_name"
  end

  create_table "genres", :force => true do |t|
    t.text    "description", :limit => 255
    t.string  "title"
    t.integer "musician_id"
    t.integer "importance"
  end

  create_table "gig_images", :force => true do |t|
    t.string  "description"
    t.string  "image"
    t.integer "gig_id"
  end

  create_table "gigs", :force => true do |t|
    t.string  "title"
    t.text    "description"
    t.string  "url"
    t.string  "location"
    t.date    "performance_date"
    t.string  "timeframe"
    t.string  "ticket_price"
    t.text    "program"
    t.integer "musician_id"
    t.text    "address"
  end

  create_table "mentor_images", :force => true do |t|
    t.string  "description"
    t.string  "image"
    t.integer "mentor_id"
  end

  create_table "mentors", :force => true do |t|
    t.string  "name"
    t.string  "url"
    t.text    "description"
    t.integer "musician_id"
    t.integer "importance"
  end

  create_table "musical_mentors", :force => true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "musician_id"
    t.integer "importance"
  end

  create_table "musician_endorsements", :force => true do |t|
    t.text    "description",           :limit => 255
    t.string  "endorser_name"
    t.string  "endorser_relationship"
    t.integer "musician_id"
    t.integer "importance"
    t.string  "endorser_url"
  end

  create_table "musician_images", :force => true do |t|
    t.string  "description"
    t.string  "image"
    t.boolean "main"
    t.integer "musician_id"
  end

  create_table "musician_jobs", :force => true do |t|
    t.text    "description",       :limit => 255
    t.string  "title"
    t.string  "location"
    t.string  "duration"
    t.string  "short_description"
    t.string  "company"
    t.integer "importance"
    t.string  "url"
    t.integer "musician_id"
  end

  create_table "musician_links", :force => true do |t|
    t.string  "description"
    t.string  "url"
    t.integer "musician_id"
    t.integer "importance"
    t.string  "display_link"
  end

  create_table "musician_video_links", :force => true do |t|
    t.text    "description"
    t.string  "title"
    t.string  "url"
    t.integer "musician_id"
    t.integer "importance"
  end

  create_table "musicians", :force => true do |t|
    t.text   "my_story"
    t.string "type"
    t.text   "education_summary", :limit => 255
  end

  create_table "pieces", :force => true do |t|
    t.string  "name"
    t.text    "description", :limit => 255
    t.integer "composer_id"
    t.string  "duration"
    t.string  "url"
  end

  create_table "teaching_locations", :force => true do |t|
    t.string  "description"
    t.integer "musician_id"
  end

end
