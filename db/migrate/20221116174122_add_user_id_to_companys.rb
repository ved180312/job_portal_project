# frozen_string_literal: true

class AddUserIdToCompanys < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :user_id, :integer
    add_index :companies, :user_id
  end
end
