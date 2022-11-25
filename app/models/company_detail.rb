# frozen_string_literal: true

class CompanyDetail < ApplicationRecord
  has_one :vacancy
  has_many :job_seekers, dependent: :destroy
  belongs_to :user
  validates :company_name, :company_location, :company_started_year, :company_link, :job_types, presence: true
end
