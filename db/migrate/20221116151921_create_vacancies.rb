# frozen_string_literal: true

class CreateVacancies < ActiveRecord::Migration[7.0]
  def change
    create_table :vacancies do |t|
      t.string :job_title
      t.string :job_type
      t.string :qualification, array: true
      t.string :language_knowledge
      t.string :experience, array: true
      t.string :other_knowledge, array: true
      t.string :description

      t.timestamps
    end
  end
end
