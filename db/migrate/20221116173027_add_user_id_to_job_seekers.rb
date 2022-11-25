# frozen_string_literal: true

class AddUserIdToJobSeekers < ActiveRecord::Migration[7.0]
  def change
    add_column :job_seekers, :user_id, :integer
    add_index :job_seekers, :user_id
  end
end
