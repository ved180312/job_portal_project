# frozen_string_literal: true

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

ActiveRecord::Schema[7.0].define(version: 20_221_121_191_656) do
  
  create_table 'company_details', force: :cascade do |t|
    t.string 'company_name'
    t.string 'company_location'
    t.date 'company_started_year'
    t.string 'job_types'
    t.string 'company_link'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
    t.index ['user_id'], name: 'index_company_details_on_user_id'
  end

  create_table 'job_seekers', force: :cascade do |t|
    t.string 'name'
    t.integer 'number'
    t.string 'email'
    t.string 'gender'
    t.integer 'percentage_10th'
    t.integer 'percentage_12th'
    t.string 'graduation_course'
    t.string 'stream'
    t.integer 'graduation_percentage'
    t.string 'hometown'
    t.string 'current_location'
    t.string 'placed'
    t.string 'cv'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'company_detail_id'
    t.integer 'user_id'
    t.integer 'vacancy_id'
    t.index ['company_detail_id'], name: 'index_job_seekers_on_company_detail_id'
    t.index ['user_id'], name: 'index_job_seekers_on_user_id'
    t.index ['vacancy_id'], name: 'index_job_seekers_on_vacancy_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.integer 'role', default: 0
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'username'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'vacancies', force: :cascade do |t|
    t.string 'job_title'
    t.string 'job_type'
    t.string 'qualification'
    t.string 'language_knowledge'
    t.string 'experience'
    t.string 'other_knowledge'
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'company_detail_id'
    t.index ['company_detail_id'], name: 'index_vacancies_on_company_detail_id'
  end
end
