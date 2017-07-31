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

ActiveRecord::Schema.define(version: 20_170_525_054_546) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'departments', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['name'], name: 'index_departments_on_name', unique: true
  end

  create_table 'referrals', force: :cascade do |t|
    t.integer 'referral_type', null: false
    t.integer 'prioritization_year', null: false
    t.date 'meeting_date', null: false
    t.string 'agenda_item_number', null: false
    t.string 'title', null: false
    t.text 'recommendation', null: false
    t.string 'sponsors', null: false
    t.bigint 'department_id'
    t.text 'notes'
    t.date 'completed_on'
    t.integer 'first_year_rank'
    t.string 'tracking_number'
    t.date 'date_started'
    t.integer 'staff_time_required'
    t.integer 'cost'
    t.integer 'benefits'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['department_id'], name: 'index_referrals_on_department_id'
  end

  add_foreign_key 'referrals', 'departments'
end
