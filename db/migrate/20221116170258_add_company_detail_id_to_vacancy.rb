# frozen_string_literal: true

class AddCompanyDetailIdToVacancy < ActiveRecord::Migration[7.0]
  def change
    add_column :vacancies, :company_detail_id, :integer
    add_index :vacancies, :company_detail_id
  end
end
