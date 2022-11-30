# frozen_string_literal: true

class AddCompanyIdToVacancy < ActiveRecord::Migration[7.0]
  def change
    add_column :vacancies, :company_id, :integer
    add_index :vacancies, :company_id
  end
end
