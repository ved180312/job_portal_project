# frozen_string_literal: true

class AddCompanyDetailIdToJobSeekers < ActiveRecord::Migration[7.0]
  def change
    add_column :job_seekers, :company_detail_id, :integer
    add_index :job_seekers, :company_detail_id
  end
end
