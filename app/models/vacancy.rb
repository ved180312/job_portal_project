# frozen_string_literal: true

class Vacancy < ApplicationRecord
  belongs_to :company_detail
  has_many :job_seekers
  validates :job_title, :job_type, :qualification, :language_knowledge, :experience, :other_knowledge, :description,
            presence: true
end
