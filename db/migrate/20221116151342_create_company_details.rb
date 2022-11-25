# frozen_string_literal: true

class CreateCompanyDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :company_details do |t|
      t.string :company_name
      t.string :company_location
      t.date :company_started_year
      t.string :job_types
      t.string :company_link

      t.timestamps
    end
  end
end
