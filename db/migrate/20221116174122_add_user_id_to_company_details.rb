# frozen_string_literal: true

class AddUserIdToCompanyDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :company_details, :user_id, :integer
    add_index :company_details, :user_id
  end
end
