# frozen_string_literal: true

class Company < ApplicationRecord
  has_one :vacancy
  has_many :job_seekers, dependent: :destroy
  belongs_to :user
  validates :name, :location, :started_year, :link, :job_types, presence: true
end
