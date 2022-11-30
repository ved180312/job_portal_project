# frozen_string_literal: true

class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :job_seekers
  validates :job_title, :job_type, :qualification, :language_knowledge, :experience, :skills, :description,
            presence: true
end
