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

ActiveRecord::Schema.define(version: 20170510234256) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "synopsis"
    t.string   "body"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "ispublished"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "impressions_count",  default: 0
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], name: "poly_params_request_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
    t.index ["user_id"], name: "index_impressions_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "story_id"
    t.string   "message1"
    t.string   "message2"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "popup_file_name"
    t.string   "popup_content_type"
    t.integer  "popup_file_size"
    t.datetime "popup_updated_at"
    t.string   "mp3_file_name"
    t.string   "mp3_content_type"
    t.integer  "mp3_file_size"
    t.datetime "mp3_updated_at"
    t.string   "choice_img1_file_name"
    t.string   "choice_img1_content_type"
    t.integer  "choice_img1_file_size"
    t.datetime "choice_img1_updated_at"
    t.string   "choice_img2_file_name"
    t.string   "choice_img2_content_type"
    t.integer  "choice_img2_file_size"
    t.datetime "choice_img2_updated_at"
    t.string   "choice1"
    t.string   "choice2"
    t.boolean  "is_correct"
    t.boolean  "is_correct2"
    t.string   "choice_popup_file_name"
    t.string   "choice_popup_content_type"
    t.integer  "choice_popup_file_size"
    t.datetime "choice_popup_updated_at"
    t.string   "popup_audio_file_name"
    t.string   "popup_audio_content_type"
    t.integer  "popup_audio_file_size"
    t.datetime "popup_audio_updated_at"
    t.string   "end_message"
    t.index ["story_id"], name: "index_messages_on_story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.string   "synopsis"
    t.string   "texter"
    t.string   "reciever"
    t.integer  "count"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.integer  "user_id"
    t.boolean  "ispublished"
    t.integer  "category_id"
    t.integer  "impressions_count",  default: 0
    t.index ["category_id"], name: "index_stories_on_category_id"
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.text     "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "mp4_file_name"
    t.string   "mp4_content_type"
    t.integer  "mp4_file_size"
    t.datetime "mp4_updated_at"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
    t.integer  "user_id"
    t.integer  "impressions_count",       default: 0
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["cached_votes_down"], name: "index_videos_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_videos_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_videos_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_videos_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_videos_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_videos_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_videos_on_cached_weighted_total"
    t.index ["user_id"], name: "index_videos_on_user_id"
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
