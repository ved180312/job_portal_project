# frozen_string_literal: true

class CreateJobSeekers < ActiveRecord::Migration[7.0]
  def change
    create_table :job_seekers do |t|
      t.string :name
      t.integer :number
      t.string :email
      t.string :gender
      t.integer :percentage_10th
      t.integer :percentage_12th
      t.string :graduation_course
      t.string :stream
      t.integer :graduation_percentage
      t.string :hometown
      t.string :current_location
      t.string :placed
      t.string :cv

      t.timestamps
    end
  end
end
