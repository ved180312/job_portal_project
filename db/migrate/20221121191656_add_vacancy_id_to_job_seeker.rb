# frozen_string_literal: true

class AddVacancyIdToJobSeeker < ActiveRecord::Migration[7.0]
  def change
    add_column :job_seekers, :vacancy_id, :integer
    add_index :job_seekers, :vacancy_id
  end
end
