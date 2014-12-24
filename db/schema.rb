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

ActiveRecord::Schema.define(version: 20141028033011) do

  create_table "player_matchup_games", force: true do |t|
    t.integer  "player_matchup_id"
    t.string   "name"
    t.string   "date"
    t.integer  "GS"
    t.float    "MP",                limit: 24
    t.integer  "FG"
    t.integer  "FGA"
    t.float    "FGP",               limit: 24
    t.integer  "ThP"
    t.integer  "ThPA"
    t.float    "ThPP",              limit: 24
    t.integer  "FT"
    t.integer  "FTA"
    t.float    "FTP",               limit: 24
    t.integer  "ORB"
    t.integer  "DRB"
    t.integer  "AST"
    t.integer  "STL"
    t.integer  "BLK"
    t.integer  "TO"
    t.integer  "PF"
    t.integer  "PTS"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_matchups", force: true do |t|
    t.integer  "player_one_id"
    t.integer  "player_two_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.integer  "team_id"
    t.boolean  "starter",                      default: false
    t.string   "name"
    t.string   "alias"
    t.string   "height"
    t.string   "position"
    t.boolean  "forward",                      default: false
    t.boolean  "guard",                        default: false
    t.integer  "GS"
    t.integer  "MP"
    t.integer  "FG"
    t.integer  "FGA"
    t.float    "FGP",               limit: 24
    t.integer  "ThP"
    t.integer  "ThPA"
    t.float    "ThPP",              limit: 24
    t.integer  "FT"
    t.integer  "FTA"
    t.float    "FTP",               limit: 24
    t.integer  "ORB"
    t.integer  "DRB"
    t.integer  "STL"
    t.integer  "TO"
    t.integer  "PF"
    t.integer  "PTS"
    t.integer  "ORtg"
    t.integer  "DRtg"
    t.float    "eFG",               limit: 24
    t.float    "TS",                limit: 24
    t.float    "MP_1",              limit: 24
    t.float    "MP_2",              limit: 24
    t.float    "MP_3",              limit: 24
    t.float    "MP_4",              limit: 24
    t.float    "MP_5",              limit: 24
    t.string   "team_1"
    t.string   "team_2"
    t.string   "team_3"
    t.string   "team_4"
    t.string   "team_5"
    t.string   "date_1"
    t.string   "date_2"
    t.string   "date_3"
    t.string   "date_4"
    t.string   "date_5"
    t.integer  "MP_2014",                      default: 0
    t.integer  "ORtg_2014",                    default: 0
    t.integer  "DRtg_2014",                    default: 0
    t.float    "on_court_pace",     limit: 24, default: 0.0
    t.float    "opp_on_court_pace", limit: 24, default: 0.0
    t.float    "on_court_ORtg",     limit: 24, default: 0.0
    t.float    "opp_on_court_ORtg", limit: 24, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["name"], name: "index_players_on_name", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.integer  "yesterday_team_id"
    t.integer  "today_team_id"
    t.integer  "tomorrow_team_id"
    t.boolean  "yesterday"
    t.boolean  "today"
    t.boolean  "tomorrow"
    t.string   "opp_yesterday"
    t.string   "opp_today"
    t.string   "opp_tomorrow"
    t.integer  "G"
    t.integer  "PTS"
    t.float    "FGP",               limit: 24
    t.float    "ThPP",              limit: 24
    t.integer  "ThPA"
    t.float    "opp_ThPP",          limit: 24
    t.integer  "opp_ThPA"
    t.float    "pace",              limit: 24
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["name"], name: "index_teams_on_name", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
