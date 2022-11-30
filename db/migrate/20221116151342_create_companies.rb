# frozen_string_literal: true

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.date :started_year
      t.string :job_types
      t.string :link

      t.timestamps
    end
  end
end
