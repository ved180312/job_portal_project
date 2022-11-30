# frozen_string_literal: true

class AddCompanyIdToJobSeekers < ActiveRecord::Migration[7.0]
  def change
    add_column :job_seekers, :company_id, :integer
    add_index :job_seekers, :company_id
  end
end
