# frozen_string_literal: true

class JobSeeker < ApplicationRecord
  belongs_to :user
  belongs_to :company_detail
  belongs_to :vacancy
  validates :name, :number, :email, :gender, :percentage_10th, :percentage_12th, :graduation_course,
            :graduation_percentage, :stream, :hometown, :current_location, :placed, :cv, presence: true
  validates_format_of :number, with: /\(?[0-9]{3}\)?[0-9]{3}[0-9]{4}/,
                               message: '- Phone numbers must be in xxx-xxx-xxxx format.'
  validates :percentage_10th, :percentage_12th, :graduation_percentage, presence: true, length: { in: 2..3 },
                                                                        numericality: { only_integer: true }
end
